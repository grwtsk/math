# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:073a7f72865bccf4bf2ea6aaca4d6c50b4da5d9babd0d558002b7648c7fd3086",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--b237759c3e55d031fb3eefc9",
  "source": {
    "blob": "c1f72a1b4ded7ee5f43f586f7f94886acdd6bd8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Variant1fe3660eba2b911bf3c45a07844c6d90d0cc14cd1d5cddcfc7d748ad7140ef0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b237759c3e55d031fb3eefc98547747db1008b358c360b568f9c69fb32ad3f8b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Variant1fe3660eba2b911bf3c45a07844c6d90d0cc14cd1d5cddcfc7d748ad7140ef0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:073a7f72865bccf4bf2ea6aaca4d6c50b4da5d9babd0d558002b7648c7fd3086`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : ProperSpace ℚ_[p] := by
  suffices LocallyCompactSpace ℚ_[p] from .of_nontriviallyNormedField_of_weaklyLocallyCompactSpace _
  have : closedBall 0 1 ∈ 𝓝 (0 : ℚ_[p]) := closedBall_mem_nhds _ zero_lt_one
  simp only [closedBall, dist_eq_norm_sub, sub_zero] at this
  refine IsCompact.locallyCompactSpace_of_mem_nhds_of_addGroup ?_ this
  simpa only [isCompact_iff_compactSpace] using PadicInt.compactSpace p

end Padic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Variant1fe3660eba2b911bf3c45a07844c6d90d0cc14cd1d5cddcfc7d748ad7140ef0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Variant1fe3660eba2b911bf3c45a07844c6d90d0cc14cd1d5cddcfc7d748ad7140ef0c.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1f72a1b4ded7ee5f43f586f7f94886acdd6bd8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
