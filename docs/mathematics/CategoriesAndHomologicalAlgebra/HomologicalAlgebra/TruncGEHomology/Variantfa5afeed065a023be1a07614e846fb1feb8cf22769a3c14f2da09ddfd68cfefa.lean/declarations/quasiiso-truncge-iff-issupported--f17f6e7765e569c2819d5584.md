# quasiIso_πTruncGE_iff_isSupported

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa89ea0d-7ffa-8d51-9008-9bc080102e8f",
  "kind": "lemma",
  "lexical_name": "quasiIso_πTruncGE_iff_isSupported",
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
  "slug": "quasiiso-truncge-iff-issupported--f17f6e7765e569c2819d5584",
  "source": {
    "blob": "aaeed8ef11962f9fbf4ff22a3473ef036600bb39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 195,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f17f6e7765e569c2819d5584d9c31764898d31d4c849056007a9cd49aac66591",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa89ea0d-7ffa-8d51-9008-9bc080102e8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quasiIso_πTruncGE_iff_isSupported :
    QuasiIso (K.πTruncGE e) ↔ K.IsSupported e := by
  constructor
  · intro
    refine ⟨fun i' hi' => ?_⟩
    rw [exactAt_iff_of_quasiIsoAt (K.πTruncGE e) i']
    exact (K.truncGE e).exactAt_of_isSupported e i' hi'
  · intro
    rw [quasiIso_iff]
    intro i'
    by_cases hi' : ∃ i, e.f i = i'
    · obtain ⟨i, rfl⟩ := hi'
      infer_instance
    · rw [quasiIsoAt_iff_exactAt (K.πTruncGE e) i']
      all_goals exact exactAt_of_isSupported _ e i' (by simpa using hi')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaeed8ef11962f9fbf4ff22a3473ef036600bb39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
