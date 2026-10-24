# fundamentalGroupToMulOpposite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa8a9fc83f9a7e3a0b59f6f0269efa60a38f9dff9bc3ab79a01d033cec45e153",
  "kind": "def",
  "lexical_name": "fundamentalGroupToMulOpposite",
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
  "slug": "fundamentalgrouptomulopposite--e74d4da3a59a9d7a8052ee9e",
  "source": {
    "blob": "2fad44e72ce62dfc5ab7ea4fc07a469842e5b8fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 650,
    "line": 638,
    "path": "GRWTSK/Topology/AlgebraicTopology/Lifting/Variant3b9bfeacea26f349c180210ace1192e199c88e636b09c2b53368effa7ae8a1de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e74d4da3a59a9d7a8052ee9e0dd04aa3405269972a7e60de2e055e8fb3ef4d95",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Lifting/Variant3b9bfeacea26f349c180210ace1192e199c88e636b09c2b53368effa7ae8a1de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa8a9fc83f9a7e3a0b59f6f0269efa60a38f9dff9bc3ab79a01d033cec45e153`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 638–650.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fundamentalGroupToMulOpposite : FundamentalGroup X x →* Gᵐᵒᵖ where
  toFun γ := op <| hp.fiberEquivGroup e (hp.isCoveringMap.monodromy γ e)
  map_one' := by rw [FundamentalGroup.one_def, IsCoveringMap.monodromy_refl]; simp
  map_mul' γ γ' := by
    rw [FundamentalGroup.mul_def, IsCoveringMap.monodromy_trans_apply, ← op_mul, op_inj]
    apply hp.isCancelSMul.right_cancel _ _ e.1
    simp_rw [mul_smul, fiberEquivGroup_smul_self, ← hp.toPermFiber_apply_apply_coe]
    congr
    refine .trans ?_ hp.monodromy_toPermFiber
    congr
    exact Subtype.ext (fiberEquivGroup_smul_self ..).symm

variable {e} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Lifting/Variant3b9bfeacea26f349c180210ace1192e199c88e636b09c2b53368effa7ae8a1de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Lifting/Variant3b9bfeacea26f349c180210ace1192e199c88e636b09c2b53368effa7ae8a1de.lean#L638).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fad44e72ce62dfc5ab7ea4fc07a469842e5b8fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
