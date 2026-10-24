namespace Think.Codex.MarkdownLoraBijection

abbrev RecordId := Nat

structure CanonicalMarkdownRecord where
  id : RecordId
  sourceFree : Bool
  authorityBounded : Bool
  residueExplicit : Bool
  nonClaimsPresent : Bool
  deriving Repr, DecidableEq

structure LoraTrainingRow where
  id : RecordId
  chatFormatted : Bool
  promptMasked : Bool
  assistantTargetPresent : Bool
  authorityBoundaryPresent : Bool
  deriving Repr, DecidableEq

structure TokenLabelPair where
  sourceRowId : RecordId
  tokenized : Bool
  labelsMasked : Bool
  deriving Repr, DecidableEq

structure AdapterWitness where
  sourceCorpusDigest : String
  adapterDigest : String
  effectObserved : Bool
  deriving Repr, DecidableEq

structure BehaviorWitness where
  adapterDigest : String
  promptDigest : String
  rawGrammarAccepted : Bool
  repairApplied : Bool
  deriving Repr, DecidableEq

def CanonicalMarkdownRecord.admissible (r : CanonicalMarkdownRecord) : Prop :=
  r.sourceFree = true ∧
  r.authorityBounded = true ∧
  r.residueExplicit = true ∧
  r.nonClaimsPresent = true

def LoraTrainingRow.admissible (row : LoraTrainingRow) : Prop :=
  row.chatFormatted = true ∧
  row.promptMasked = true ∧
  row.assistantTargetPresent = true ∧
  row.authorityBoundaryPresent = true

def RowFor (r : CanonicalMarkdownRecord) (row : LoraTrainingRow) : Prop :=
  row.id = r.id

structure MarkdownTrainingBijection where
  toRow : CanonicalMarkdownRecord → LoraTrainingRow
  toRecord : LoraTrainingRow → CanonicalMarkdownRecord
  toRow_preserves_id : ∀ r, (toRow r).id = r.id
  toRecord_preserves_id : ∀ row, (toRecord row).id = row.id
  left_inverse_id : ∀ r, (toRecord (toRow r)).id = r.id
  right_inverse_id : ∀ row, (toRow (toRecord row)).id = row.id

theorem toRow_is_for_record
    (B : MarkdownTrainingBijection)
    (r : CanonicalMarkdownRecord) :
    RowFor r (B.toRow r) := by
  exact B.toRow_preserves_id r

theorem canonical_markdown_training_rows_are_id_bijective
    (B : MarkdownTrainingBijection) :
    (∀ r, (B.toRecord (B.toRow r)).id = r.id) ∧
    (∀ row, (B.toRow (B.toRecord row)).id = row.id) := by
  constructor
  · exact B.left_inverse_id
  · exact B.right_inverse_id

structure AdapterBoundary where
  claimsMarkdownToTokenBijection : Bool
  claimsMarkdownToAdapterBijection : Bool
  claimsAdapterBehaviorInverse : Bool
  claimsAdapterBehaviorSettlement : Bool
  deriving Repr, DecidableEq

def AdapterBoundary.admissible (b : AdapterBoundary) : Prop :=
  b.claimsMarkdownToTokenBijection = false ∧
  b.claimsMarkdownToAdapterBijection = false ∧
  b.claimsAdapterBehaviorInverse = false ∧
  b.claimsAdapterBehaviorSettlement = false

theorem admissible_boundary_refuses_markdown_token_bijection
    {b : AdapterBoundary}
    (h : b.admissible) :
    b.claimsMarkdownToTokenBijection = false := by
  exact h.1

theorem admissible_boundary_refuses_markdown_adapter_bijection
    {b : AdapterBoundary}
    (h : b.admissible) :
    b.claimsMarkdownToAdapterBijection = false := by
  exact h.2.1

theorem admissible_boundary_refuses_behavior_inverse
    {b : AdapterBoundary}
    (h : b.admissible) :
    b.claimsAdapterBehaviorInverse = false := by
  exact h.2.2.1

theorem admissible_boundary_refuses_behavior_settlement
    {b : AdapterBoundary}
    (h : b.admissible) :
    b.claimsAdapterBehaviorSettlement = false := by
  exact h.2.2.2

theorem safe_markdown_lora_correspondence
    (B : MarkdownTrainingBijection)
    {boundary : AdapterBoundary}
    (hBoundary : boundary.admissible) :
    (∀ r, RowFor r (B.toRow r)) ∧
    boundary.claimsMarkdownToAdapterBijection = false ∧
    boundary.claimsAdapterBehaviorInverse = false ∧
    boundary.claimsAdapterBehaviorSettlement = false := by
  constructor
  · intro r
    exact toRow_is_for_record B r
  · constructor
    · exact admissible_boundary_refuses_markdown_adapter_bijection hBoundary
    · constructor
      · exact admissible_boundary_refuses_behavior_inverse hBoundary
      · exact admissible_boundary_refuses_behavior_settlement hBoundary

end Think.Codex.MarkdownLoraBijection
