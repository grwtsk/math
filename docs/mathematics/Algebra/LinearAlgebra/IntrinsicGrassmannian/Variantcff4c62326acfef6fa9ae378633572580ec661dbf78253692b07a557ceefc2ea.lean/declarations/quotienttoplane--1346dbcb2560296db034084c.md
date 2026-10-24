# quotientToPlane

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbab90de48d8341aea377360ee9d2f8a32e7136720cc91596fea1136b7543553",
  "kind": "def",
  "lexical_name": "quotientToPlane",
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
  "slug": "quotienttoplane--1346dbcb2560296db034084c",
  "source": {
    "blob": "ff2c016b4bca01700b74d77e95685cd9b21a66e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 111,
    "path": "GRWTSK/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1346dbcb2560296db034084c8b377a70f1770acc6b43e1674193b911e7cef4fe",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbab90de48d8341aea377360ee9d2f8a32e7136720cc91596fea1136b7543553`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotientToPlane : FramePresentationQuotient k n → IntrinsicPlane k n :=
  Quotient.lift representedPlane (fun _ _ h => Subtype.ext h)

/-- Send a subspace to the presentation class of a logical chosen frame. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff2c016b4bca01700b74d77e95685cd9b21a66e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
