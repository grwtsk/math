# rid_comp_map_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1dfd4b17dec6a71b7360ff35337e31acfa0274ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 546,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3231de78-66e4-14cc-c6ec-ac3e41572322",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77fb73ec-9855-8292-2c81-ffe4365f8eeb",
  "kind": "lemma",
  "lexical_name": "rid_comp_map_assoc",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "rid-comp-map-assoc--5f2a841dca22522165d5d2d1",
  "source": {
    "blob": "1dfd4b17dec6a71b7360ff35337e31acfa0274ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 546,
    "path": "GRWTSK/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f2a841dca22522165d5d2d16fcd6f29da4f9746fa5a4dc7f9a90fe5c9c7894b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77fb73ec-9855-8292-2c81-ffe4365f8eeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rid_comp_map_assoc (f : M →ₗ[R] M') (g : N →ₗ[R] R) (h : P →ₗ[R] M ⊗[R] N) :
    ρ ∘ₗ (f ⊗ₘ g) ∘ₗ h = f ∘ₗ ρ ∘ₗ (.id ⊗ₘ g) ∘ₗ h := by
  simp only [← LinearMap.comp_assoc, rid_comp_map f]

/-- Simproc version of `rid_comp_map_assoc` that only fires when `f ≠ id`. -/
simproc_decl rid_comp_map_assoc_simproc
    ((TensorProduct.rid _ _).toLinearMap ∘ₗ (_ ⊗ₘ _) ∘ₗ _) := .ofQ fun _ _ e ↦ do
  let_expr LinearMap.comp R _ _ P _ M' _ _ _ instP _ instM' instRP _ instRM' _ _ _ _ _ e' ← e
    | return Lean.Meta.Simp.StepQ.continue
  let_expr LinearMap.comp _ _ _ _ T₁ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ← e'
    | return Lean.Meta.Simp.StepQ.continue
  let_expr TensorProduct _ instR M N instM instN instRM instRN ← T₁
    | return Lean.Meta.Simp.StepQ.continue
  let .succ u₁ := (← Lean.Meta.inferType R).sortLevel! | return .continue
  let .succ u₂ := (← Lean.Meta.inferType M).sortLevel! | return .continue
  let .succ u₃ := (← Lean.Meta.inferType M').sortLevel! | return .continue
  let .succ u₄ := (← Lean.Meta.inferType N).sortLevel! | return .continue
  let .succ u₅ := (← Lean.Meta.inferType P).sortLevel! | return .continue
  have R  : Q(Type u₁) := R
  have M  : Q(Type u₂) := M
  have M' : Q(Type u₃) := M'
  have N  : Q(Type u₄) := N
  have P  : Q(Type u₅) := P
  have : Q(CommSemiring $R)   := instR
  have : Q(AddCommMonoid $M)  := instM
  have : Q(AddCommMonoid $M') := instM'
  have : Q(AddCommMonoid $N)  := instN
  have : Q(AddCommMonoid $P)  := instP
  have : Q(Module $R $M)  := instRM
  have : Q(Module $R $M') := instRM'
  have : Q(Module $R $N)  := instRN
  have : Q(Module $R $P)  := instRP
  have e : Q($P →ₗ[$R] $M') := e
  match e with
  | ~q((TensorProduct.rid «$R» «$M'»).toLinearMap ∘ₗ ($f ⊗ₘ $g) ∘ₗ
      ($h : «$P» →ₗ[«$R»] «$M» ⊗[«$R»] «$N»)) =>
  match_expr f with
  | LinearMap.id _ _ _ _ _ => return .continue
  | _ =>
  return .visit (e := e) <| .mk q($f ∘ₗ (TensorProduct.rid $R _).toLinearMap ∘ₗ (.id ⊗ₘ $g) ∘ₗ $h)
    (some q(rid_comp_map_assoc ..))

attribute [coassoc_simps] rid_comp_map_assoc_simproc

@[coassoc_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dfd4b17dec6a71b7360ff35337e31acfa0274ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
