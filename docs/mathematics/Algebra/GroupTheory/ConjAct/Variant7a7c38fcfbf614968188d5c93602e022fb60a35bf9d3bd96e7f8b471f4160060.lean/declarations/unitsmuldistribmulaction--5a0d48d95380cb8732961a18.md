# unitsMulDistribMulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b67f98ecedf4f37a32efb1f8dd9fbc950e5fd599ba8118624f7a44bf9c0f9e23",
  "kind": "instance",
  "lexical_name": "unitsMulDistribMulAction",
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
  "slug": "unitsmuldistribmulaction--5a0d48d95380cb8732961a18",
  "source": {
    "blob": "c162ab330999fc1a8236b53b703ae43a33a5042f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 175,
    "path": "GRWTSK/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a0d48d95380cb8732961a184c24c5e5fbfb6847e12b3d8fed3b2174a7bb3d0d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b67f98ecedf4f37a32efb1f8dd9fbc950e5fd599ba8118624f7a44bf9c0f9e23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance unitsMulDistribMulAction : MulDistribMulAction (ConjAct Mˣ) M where
  one_smul := by simp only [units_smul_def, ofConjAct_one, Units.val_one, one_mul, inv_one,
    mul_one, forall_const]
  mul_smul := by
    simp only [units_smul_def]
    simp only [map_mul, Units.val_mul, mul_assoc, mul_inv_rev, forall_const, «forall»]
  smul_mul := by
    simp only [units_smul_def]
    simp only [mul_assoc, Units.inv_mul_cancel_left, forall_const, «forall»]
  smul_one := by simp [units_smul_def, mul_one, Units.mul_inv, «forall», forall_const]
#align conj_act.units_mul_distrib_mul_action ConjAct.unitsMulDistribMulAction


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c162ab330999fc1a8236b53b703ae43a33a5042f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
