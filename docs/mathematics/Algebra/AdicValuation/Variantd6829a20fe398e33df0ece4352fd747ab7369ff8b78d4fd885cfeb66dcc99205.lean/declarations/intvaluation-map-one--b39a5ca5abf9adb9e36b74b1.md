# intValuation.map_one'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d21e862-4fed-3c25-8e50-d665ccd3296b",
  "kind": "theorem",
  "lexical_name": "intValuation.map_one'",
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
  "slug": "intvaluation-map-one--b39a5ca5abf9adb9e36b74b1",
  "source": {
    "blob": "aa73aedb4ac193b41a3f33fd885d99f34e614ed3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 108,
    "path": "GRWTSK/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b39a5ca5abf9adb9e36b74b124e9ab3e862958b3995633419acc1255f2ce63d5",
  "verification": {
    "reference": "docs/verification/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d21e862-4fed-3c25-8e50-d665ccd3296b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intValuation.map_one' : v.intValuationDef 1 = 1 := by
  classical
  rw [v.intValuationDef_if_neg (zero_ne_one.symm : (1 : R) ≠ 0), Ideal.span_singleton_one, ←
    Ideal.one_eq_top, Associates.mk_one, Associates.factors_one,
    Associates.count_zero (by apply v.associates_irreducible), Int.ofNat_zero, neg_zero, ofAdd_zero,
    WithZero.coe_one]

/-- The `v`-adic valuation of a product equals the product of the valuations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa73aedb4ac193b41a3f33fd885d99f34e614ed3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
