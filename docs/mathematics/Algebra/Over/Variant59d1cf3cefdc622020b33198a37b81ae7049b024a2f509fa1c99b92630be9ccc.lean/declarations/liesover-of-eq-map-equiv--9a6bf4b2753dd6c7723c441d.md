# LiesOver.of_eq_map_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2dc3303-db93-5e6b-2273-0e6ee16f691a",
  "kind": "theorem",
  "lexical_name": "LiesOver.of_eq_map_equiv",
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
  "slug": "liesover-of-eq-map-equiv--9a6bf4b2753dd6c7723c441d",
  "source": {
    "blob": "a12e9844cdd888c8d956f962b67609be51d6d2cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 168,
    "path": "GRWTSK/Algebra/Over/Variant59d1cf3cefdc622020b33198a37b81ae7049b024a2f509fa1c99b92630be9ccc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a6bf4b2753dd6c7723c441d8bb91ac4713fa93c5f7aeff71ceeaf7a5c26fe05",
  "verification": {
    "reference": "docs/verification/Algebra/Over/Variant59d1cf3cefdc622020b33198a37b81ae7049b024a2f509fa1c99b92630be9ccc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2dc3303-db93-5e6b-2273-0e6ee16f691a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LiesOver.of_eq_map_equiv [P.LiesOver p] {E : Type*} [EquivLike E B C]
    [AlgEquivClass E A B C] (σ : E) (h : Q = P.map σ) : Q.LiesOver p := by
  rw [← show _ = P.map σ from comap_symm (RingEquivClass.toRingEquiv σ)] at h
  exact of_eq_comap p (AlgEquiv.ofClass σ).symm h

variable {p} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Over/Variant59d1cf3cefdc622020b33198a37b81ae7049b024a2f509fa1c99b92630be9ccc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Over/Variant59d1cf3cefdc622020b33198a37b81ae7049b024a2f509fa1c99b92630be9ccc.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a12e9844cdd888c8d956f962b67609be51d6d2cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
