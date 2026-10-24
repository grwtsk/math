# fundamentalGroupToMulOpposite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:365602a3bd89d62b39ed3398fab736998a290e7806b12c526e7698a04cc85e3e",
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
  "slug": "fundamentalgrouptomulopposite--d15b62e39aceb2f8ab20c1f4",
  "source": {
    "blob": "f5a47dfa109fb307cf105a6bfef0da78a03d6d21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 642,
    "line": 630,
    "path": "GRWTSK/Topology/AlgebraicTopology/Lifting/Variant47b44da5cc6f4d708c6d234a8abceea6a6852da69cd5e25c70c8e34deda9b47c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d15b62e39aceb2f8ab20c1f46ccae87c50430972c9b498eadffe64fff48205d3",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Lifting/Variant47b44da5cc6f4d708c6d234a8abceea6a6852da69cd5e25c70c8e34deda9b47c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:365602a3bd89d62b39ed3398fab736998a290e7806b12c526e7698a04cc85e3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 630–642.

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

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Lifting/Variant47b44da5cc6f4d708c6d234a8abceea6a6852da69cd5e25c70c8e34deda9b47c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Lifting/Variant47b44da5cc6f4d708c6d234a8abceea6a6852da69cd5e25c70c8e34deda9b47c.lean#L630).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5a47dfa109fb307cf105a6bfef0da78a03d6d21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
