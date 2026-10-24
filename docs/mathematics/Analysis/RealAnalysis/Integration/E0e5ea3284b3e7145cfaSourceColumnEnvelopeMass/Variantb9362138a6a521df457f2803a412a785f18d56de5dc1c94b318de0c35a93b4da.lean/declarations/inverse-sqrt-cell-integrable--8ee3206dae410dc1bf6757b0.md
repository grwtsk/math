# inverse_sqrt_cell_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9035f6c4-3abf-021a-6a59-96b1f9e35f8d",
  "kind": "theorem",
  "lexical_name": "inverse_sqrt_cell_integrable",
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
  "slug": "inverse-sqrt-cell-integrable--8ee3206dae410dc1bf6757b0",
  "source": {
    "blob": "06536453d784d52050f966efb513bc905a0735e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/E0e5ea3284b3e7145cfaSourceColumnEnvelopeMass/Variantb9362138a6a521df457f2803a412a785f18d56de5dc1c94b318de0c35a93b4da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ee3206dae410dc1bf6757b04d9233bf04fe24daa2ef36a272d0fd39cd5e6232",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/E0e5ea3284b3e7145cfaSourceColumnEnvelopeMass/Variantb9362138a6a521df457f2803a412a785f18d56de5dc1c94b318de0c35a93b4da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9035f6c4-3abf-021a-6a59-96b1f9e35f8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inverse_sqrt_cell_integrable (a b : ℝ) (ha : 0 < a) (hab : a ≤ b) :
    IntervalIntegrable (fun u : ℝ => 1 / (u * Real.sqrt u)) volume a b := by
  apply ContinuousOn.intervalIntegrable
  apply continuousOn_const.div
  · exact continuousOn_id.mul Real.continuous_sqrt.continuousOn
  · intro u hu
    have hu0 : 0 < u := ha.trans_le (by simpa only [min_eq_left hab] using hu.1)
    exact mul_ne_zero hu0.ne' (Real.sqrt_pos.2 hu0).ne'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/E0e5ea3284b3e7145cfaSourceColumnEnvelopeMass/Variantb9362138a6a521df457f2803a412a785f18d56de5dc1c94b318de0c35a93b4da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/E0e5ea3284b3e7145cfaSourceColumnEnvelopeMass/Variantb9362138a6a521df457f2803a412a785f18d56de5dc1c94b318de0c35a93b4da.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06536453d784d52050f966efb513bc905a0735e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
