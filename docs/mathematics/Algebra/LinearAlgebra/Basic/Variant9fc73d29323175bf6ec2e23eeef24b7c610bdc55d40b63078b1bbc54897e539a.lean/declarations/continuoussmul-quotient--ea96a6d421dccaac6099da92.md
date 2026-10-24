# continuousSMul_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:103f06a6a6e3310e88ffc2f041820cb7f659d8562a3bed38719e54853ea80059",
  "kind": "instance",
  "lexical_name": "continuousSMul_quotient",
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
  "slug": "continuoussmul-quotient--ea96a6d421dccaac6099da92",
  "source": {
    "blob": "596d52e15c46b6115a2d4747e0dc67143fb1e7ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 318,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant9fc73d29323175bf6ec2e23eeef24b7c610bdc55d40b63078b1bbc54897e539a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea96a6d421dccaac6099da9279afbd3ed5da1a84c457085eb1d301f4290e91a9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant9fc73d29323175bf6ec2e23eeef24b7c610bdc55d40b63078b1bbc54897e539a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:103f06a6a6e3310e88ffc2f041820cb7f659d8562a3bed38719e54853ea80059`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance continuousSMul_quotient [TopologicalSpace R] [IsTopologicalAddGroup M]
    [ContinuousSMul R M] : ContinuousSMul R (M ⧸ S) where
  continuous_smul := by
    rw [← (IsOpenQuotientMap.id.prodMap S.isOpenQuotientMap_mkQ).continuous_comp_iff]
    exact continuous_quot_mk.comp continuous_smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant9fc73d29323175bf6ec2e23eeef24b7c610bdc55d40b63078b1bbc54897e539a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant9fc73d29323175bf6ec2e23eeef24b7c610bdc55d40b63078b1bbc54897e539a.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `596d52e15c46b6115a2d4747e0dc67143fb1e7ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
