# intrinsicEquivQuotientConvention

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51313c4181f29486e889a664755d1253e2c3962c46c2eed8e1d47fb2716f15e7",
  "kind": "def",
  "lexical_name": "intrinsicEquivQuotientConvention",
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
  "slug": "intrinsicequivquotientconvention--6382fa511883e8c53f7f642b",
  "source": {
    "blob": "da0e19398731813805fb287f497f41500ff753d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 76,
    "path": "GRWTSK/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6382fa511883e8c53f7f642b36d0ccf7c47a1359e6d97be1eaea80c40343197b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51313c4181f29486e889a664755d1253e2c3962c46c2eed8e1d47fb2716f15e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def intrinsicEquivQuotientConvention (hkn : k ≤ n) :
    IntrinsicPlane k n ≃ QuotientPlane (n - k) n where
  toFun := intrinsicToQuotientConvention
  invFun := quotientConventionToIntrinsic hkn
  left_inv P := Subtype.ext rfl
  right_inv Q := Module.Grassmannian.ext rfl

/-- The forward/inverse round trip is an actual identity of intrinsic subspaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da0e19398731813805fb287f497f41500ff753d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
