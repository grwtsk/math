# inv27_trace87

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb3c34e7-fad4-1b2f-65a9-74d64227ffda",
  "kind": "theorem",
  "lexical_name": "inv27_trace87",
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
  "slug": "inv27-trace87--4acd6e468aa61c4ba049e43c",
  "source": {
    "blob": "b42e9a7d225f37586f82f4d0a6224b5119565da8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 342,
    "path": "GRWTSK/Algebra/FiniteField/GF128/Inv27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4acd6e468aa61c4ba049e43c2b9ecd39e392410fb71225d19c0bcc8c2079c400",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Inv27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb3c34e7-fad4-1b2f-65a9-74d64227ffda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv27_trace87 : powFuel 41 2199023255551 328874957021036286637938331848108634253 277106413226049743676000879961182739672 = 37809151880104273718152734159085356818 :=
  (pow_odd_step 40 2199023255551 328874957021036286637938331848108634253 277106413226049743676000879961182739672 128769591660778778788591783451902629808 46589969429353318345461475548085499765 (by decide) (by decide) inv27_square87 inv27_product87).trans inv27_trace88
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Inv27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteField/GF128/Inv27.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b42e9a7d225f37586f82f4d0a6224b5119565da8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
