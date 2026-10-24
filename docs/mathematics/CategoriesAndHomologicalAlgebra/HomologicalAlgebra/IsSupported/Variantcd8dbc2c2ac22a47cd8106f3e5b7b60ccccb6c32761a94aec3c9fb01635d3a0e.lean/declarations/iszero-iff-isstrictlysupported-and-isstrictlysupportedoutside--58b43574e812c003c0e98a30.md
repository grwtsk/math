# isZero_iff_isStrictlySupported_and_isStrictlySupportedOutside

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c312e81-54b1-10c9-5877-72212ff31589",
  "kind": "lemma",
  "lexical_name": "isZero_iff_isStrictlySupported_and_isStrictlySupportedOutside",
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
  "slug": "iszero-iff-isstrictlysupported-and-isstrictlysupportedoutside--58b43574e812c003c0e98a30",
  "source": {
    "blob": "7554c07f7e1d04039458b5455c116af3ac280207",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 130,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58b43574e812c003c0e98a30f1727c0bc95fa30c0cb418e29c599647b9630dd4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c312e81-54b1-10c9-5877-72212ff31589`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isZero_iff_isStrictlySupported_and_isStrictlySupportedOutside :
    IsZero K ↔ K.IsStrictlySupported e ∧ K.IsStrictlySupportedOutside e := by
  constructor
  · intro hK
    constructor
    all_goals
      constructor
      intros
      exact (eval _ _ _).map_isZero hK
  · rintro ⟨h₁, h₂⟩
    rw [IsZero.iff_id_eq_zero]
    ext n
    apply IsZero.eq_of_src
    by_cases hn : ∃ i, e.f i = n
    · obtain ⟨i, rfl⟩ := hn
      exact h₂.isZero i
    · exact K.isZero_X_of_isStrictlySupported e _ (by simpa using hn)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7554c07f7e1d04039458b5455c116af3ac280207` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
