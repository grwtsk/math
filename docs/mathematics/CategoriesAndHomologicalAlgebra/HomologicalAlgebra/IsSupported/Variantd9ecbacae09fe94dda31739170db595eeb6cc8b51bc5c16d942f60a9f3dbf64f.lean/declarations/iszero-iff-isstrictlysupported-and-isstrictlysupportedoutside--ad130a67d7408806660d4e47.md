# isZero_iff_isStrictlySupported_and_isStrictlySupportedOutside

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f6885443ab1dba5fcf7aa2f69fa7eaf1f82b41d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9ecbacae09fe94dda31739170db595eeb6cc8b51bc5c16d942f60a9f3dbf64f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:419a990b-eac2-519d-fe40-f5d71bbb5f43",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:edb1a90d-5bb3-a9d6-a68e-5770bf3c3f07",
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
  "slug": "iszero-iff-isstrictlysupported-and-isstrictlysupportedoutside--ad130a67d7408806660d4e47",
  "source": {
    "blob": "5f6885443ab1dba5fcf7aa2f69fa7eaf1f82b41d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 122,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantd9ecbacae09fe94dda31739170db595eeb6cc8b51bc5c16d942f60a9f3dbf64f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad130a67d7408806660d4e4705071b1911634c55028c086f74fed6202c8d9953",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantd9ecbacae09fe94dda31739170db595eeb6cc8b51bc5c16d942f60a9f3dbf64f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edb1a90d-5bb3-a9d6-a68e-5770bf3c3f07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–139.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantd9ecbacae09fe94dda31739170db595eeb6cc8b51bc5c16d942f60a9f3dbf64f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantd9ecbacae09fe94dda31739170db595eeb6cc8b51bc5c16d942f60a9f3dbf64f.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f6885443ab1dba5fcf7aa2f69fa7eaf1f82b41d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
