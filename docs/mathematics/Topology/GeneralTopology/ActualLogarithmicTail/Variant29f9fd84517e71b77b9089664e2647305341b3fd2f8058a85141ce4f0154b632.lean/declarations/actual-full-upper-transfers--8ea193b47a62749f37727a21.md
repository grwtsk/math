# actual_full_upper_transfers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fedb8c96-25de-1ec1-024f-1ee17c4a2c18",
  "kind": "theorem",
  "lexical_name": "actual_full_upper_transfers",
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
  "slug": "actual-full-upper-transfers--8ea193b47a62749f37727a21",
  "source": {
    "blob": "38d09370a3145b8fef82bfc8f7b7267b75ca640d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 81,
    "path": "GRWTSK/Topology/GeneralTopology/ActualLogarithmicTail/Variant29f9fd84517e71b77b9089664e2647305341b3fd2f8058a85141ce4f0154b632.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ea193b47a62749f37727a21fa61babd3252382a1fcddba6f2ea8d2e49ce2ede",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualLogarithmicTail/Variant29f9fd84517e71b77b9089664e2647305341b3fd2f8058a85141ce4f0154b632.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fedb8c96-25de-1ec1-024f-1ee17c4a2c18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_full_upper_transfers {R D : ℝ} (hR : baseRadius≤R)
    (hfull : ∀ A : ℝ, R≤A → signedFull A≤D) :
    ∀ A : ℝ, R≤A → signedHead A (fifthHeight A)≤D+(actualTailConstant/5)*R^(-8:ℝ) :=
  full_upper_transfers actualCountConstant_bound hR hfull

#print axioms actualCountConstant
#print axioms actualCountConstant_bound
#print axioms actualTailConstant
#print axioms actualTailConstant_pos
#print axioms actual_sixth_moment
#print axioms actual_source_tail_budgets
#print axioms exists_uniform_source_tail_constant
#print axioms actual_joint_uniform
#print axioms actual_joint_tendsto_zero
#print axioms actual_head_upper_transfers
#print axioms actual_full_upper_transfers
end ContinuousResearch.ActualLogarithmicTail
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualLogarithmicTail/Variant29f9fd84517e71b77b9089664e2647305341b3fd2f8058a85141ce4f0154b632.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualLogarithmicTail/Variant29f9fd84517e71b77b9089664e2647305341b3fd2f8058a85141ce4f0154b632.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38d09370a3145b8fef82bfc8f7b7267b75ca640d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
