# compose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:882525e26aafe73528f5512fba6f2a8cde13f4dd963d4f76e4592b73b4f1e351",
  "kind": "def",
  "lexical_name": "compose",
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
  "slug": "compose--fb59e761433ffef2de3c730a",
  "source": {
    "blob": "94193bb545d1415ceae7f407879c9ad5cdad4794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 370,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Translation/Varianta8106742f694881000c24e345253ccb002afa70d6cd44c993073736f7c4b4d48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb59e761433ffef2de3c730a4a644a6e3f274ce3a31e049b6ded35bd1d448137",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Translation/Varianta8106742f694881000c24e345253ccb002afa70d6cd44c993073736f7c4b4d48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:882525e26aafe73528f5512fba6f2a8cde13f4dd963d4f76e4592b73b4f1e351`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compose
    (first : ModelTranslation Source Target)
    (second : ModelTranslation Target Result)
    (identity : TranslationId)
    (resultRelation : ModelTranslationRelation)
    (relationComposes :
      composeRelation first.relation second.relation = some resultRelation)
    (versionsMatch : first.targetModel = second.sourceModel)
    (contextsMatch : first.targetContext.identity = second.sourceContext.identity)
    (middleMeaning :
      ∀ x, first.targetProposition x ↔ second.sourceProposition x)
    (authoritiesMatch : first.targetAuthority = second.sourceAuthority) :
    ModelTranslation Source Result where
  identity := identity
  sourceModel := first.sourceModel
  targetModel := second.targetModel
  relation := resultRelation
  sourceContext := first.sourceContext
  targetContext := second.targetContext
  objectMap := fun x ↦ second.objectMap (first.objectMap x)
  sourceProposition := first.sourceProposition
  targetProposition := second.targetProposition
  proofTransport :=
    match first.proofTransport, second.proofTransport with
    | some firstProof, some secondProof => some ⟨fun x proof ↦
        secondProof.proof (first.objectMap x)
          ((middleMeaning (first.objectMap x)).mp
            (firstProof.proof x proof))⟩
    | _, _ => none
  counterexampleTransport := none
  preservesTyping := first.preservesTyping ∧ second.preservesTyping
  preservesDeclaredMeaning :=
    first.preservesDeclaredMeaning ∧ second.preservesDeclaredMeaning
  assumptionsMapped := first.assumptionsMapped ∧ second.assumptionsMapped
  sourceAuthority := first.sourceAuthority
  targetAuthority := second.targetAuthority
  authorityNonIncreasing := by
    have firstAuthority := first.authorityNonIncreasing
    rw [authoritiesMatch] at firstAuthority
    exact Nat.le_trans second.authorityNonIncreasing firstAuthority
  provenance := first.provenance ++ second.provenance
  provenancePreserved := first.provenancePreserved ∧ second.provenancePreserved
  versionCompatible := first.versionCompatible ∧ second.versionCompatible ∧
    first.targetModel = second.sourceModel ∧
    first.targetContext.identity = second.sourceContext.identity
  unsupportedScope := first.unsupportedScope ++ second.unsupportedScope

/-- TRN-06: composition cannot increase authority. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Translation/Varianta8106742f694881000c24e345253ccb002afa70d6cd44c993073736f7c4b4d48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Translation/Varianta8106742f694881000c24e345253ccb002afa70d6cd44c993073736f7c4b4d48.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94193bb545d1415ceae7f407879c9ad5cdad4794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
