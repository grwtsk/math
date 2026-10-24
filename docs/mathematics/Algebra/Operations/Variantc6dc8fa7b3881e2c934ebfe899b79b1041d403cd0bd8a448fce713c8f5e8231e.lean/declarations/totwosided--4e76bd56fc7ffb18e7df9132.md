# toTwoSided

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4445cb16b4b4de652f213bc1723fcebfc8f3d9b25bdb4e88c9b2d2f51dd7100",
  "kind": "def",
  "lexical_name": "toTwoSided",
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
  "slug": "totwosided--4e76bd56fc7ffb18e7df9132",
  "source": {
    "blob": "55be893c6134f06e2bf47ad00809ff57adc6aca9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 405,
    "path": "GRWTSK/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e76bd56fc7ffb18e7df91321509aaf3bdf3c126168cf215a6bdea3b58879eb2",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4445cb16b4b4de652f213bc1723fcebfc8f3d9b25bdb4e88c9b2d2f51dd7100`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toTwoSided (I : Ideal R) [I.IsTwoSided] : TwoSidedIdeal R :=
  TwoSidedIdeal.mk' I I.zero_mem I.add_mem I.neg_mem (I.smul_mem _) (I.mul_mem_right _)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variantc6dc8fa7b3881e2c934ebfe899b79b1041d403cd0bd8a448fce713c8f5e8231e.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55be893c6134f06e2bf47ad00809ff57adc6aca9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
