# Valuation.extendToLocalization_apply_map_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b948bdf-67fe-5c4a-319f-309a93a6de0e",
  "kind": "theorem",
  "lexical_name": "Valuation.extendToLocalization_apply_map_apply",
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
  "slug": "valuation-extendtolocalization-apply-map-apply--270600c24b3327e9fdbcd140",
  "source": {
    "blob": "b8fb59bded8147af980fd72021c6d1cb8cd0c945",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 64,
    "path": "GRWTSK/Algebra/ExtendToLocalization/Variant94071c399e3c0fc17d5541436593bce7ec6990fd2748f51ca35f5d597d43c77b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:270600c24b3327e9fdbcd140da7bab84e690728ff3c4b76740374ce228e13a38",
  "verification": {
    "reference": "docs/verification/Algebra/ExtendToLocalization/Variant94071c399e3c0fc17d5541436593bce7ec6990fd2748f51ca35f5d597d43c77b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b948bdf-67fe-5c4a-319f-309a93a6de0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Valuation.extendToLocalization_apply_map_apply (a : A) :
    v.extendToLocalization hS B (algebraMap A B a) = v a :=
  Submonoid.LocalizationMap.lift_eq _ _ a
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ExtendToLocalization/Variant94071c399e3c0fc17d5541436593bce7ec6990fd2748f51ca35f5d597d43c77b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ExtendToLocalization/Variant94071c399e3c0fc17d5541436593bce7ec6990fd2748f51ca35f5d597d43c77b.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8fb59bded8147af980fd72021c6d1cb8cd0c945` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
