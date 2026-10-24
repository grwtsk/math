# isArtinianRing_iff_isNilpotent_maximalIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b1ff6ac-8f37-4297-68bf-86dece3c5d60",
  "kind": "lemma",
  "lexical_name": "isArtinianRing_iff_isNilpotent_maximalIdeal",
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
  "slug": "isartinianring-iff-isnilpotent-maximalideal--72d30fe6b038322644cf91bc",
  "source": {
    "blob": "270101694a5674e96efb2a6cb1ae7bc4cb1515ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 192,
    "path": "GRWTSK/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72d30fe6b038322644cf91bcb429b6bb7632f643606b74d4694cdbad44ab69a6",
  "verification": {
    "reference": "docs/verification/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b1ff6ac-8f37-4297-68bf-86dece3c5d60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isArtinianRing_iff_isNilpotent_maximalIdeal (R : Type*) [CommRing R] [IsNoetherianRing R]
    [IsLocalRing R] : IsArtinianRing R ↔ IsNilpotent (IsLocalRing.maximalIdeal R) := by
  rw [isArtinianRing_iff_krullDimLE_zero,
    Ideal.FG.isNilpotent_iff_le_nilradical (IsNoetherian.noetherian _),
    ← and_iff_left (a := Ring.KrullDimLE 0 R) ‹IsLocalRing R›,
    (Ring.krullDimLE_zero_and_isLocalRing_tfae R).out 1 4 rfl rfl,
    IsLocalRing.isMaximal_iff, le_antisymm_iff, and_iff_right]
  exact IsLocalRing.le_maximalIdeal (by simp [nilradical, Ideal.radical_eq_top])
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `270101694a5674e96efb2a6cb1ae7bc4cb1515ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
