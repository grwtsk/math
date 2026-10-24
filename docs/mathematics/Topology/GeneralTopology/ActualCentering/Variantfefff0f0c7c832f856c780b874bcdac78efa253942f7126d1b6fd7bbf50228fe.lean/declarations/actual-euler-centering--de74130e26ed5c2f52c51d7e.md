# actual_euler_centering

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35ecb0b6-7566-be27-0491-fce959d71511",
  "kind": "theorem",
  "lexical_name": "actual_euler_centering",
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
  "slug": "actual-euler-centering--de74130e26ed5c2f52c51d7e",
  "source": {
    "blob": "e3a969acd0b600ce09e5216fed9e4fb48d6cb7b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCentering/Variantfefff0f0c7c832f856c780b874bcdac78efa253942f7126d1b6fd7bbf50228fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de74130e26ed5c2f52c51d7e65f21695126491b86d07fa3bb7585e1d9536b64d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCentering/Variantfefff0f0c7c832f856c780b874bcdac78efa253942f7126d1b6fd7bbf50228fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35ecb0b6-7566-be27-0491-fce959d71511`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_euler_centering :
    (∫ u in Ioi (0 : ℝ), psiRelativeError u) = -1 - Real.eulerMascheroniConstant := by
  have hm : Measurable actualRemainder := centeredMangoldtError_measurable
  have hb : ∀ t : ℝ, 0 ≤ t → |actualRemainder t| ≤
      Real.log 4 + 4 + Real.log 2 + |Real.eulerMascheroniConstant| := by
    intro t ht
    exact centeredMangoldtError_bound ht
  have hf := bounded_final_value hm hb actual_remainder_tendsto_integral
  have hz : (∫ u in Ioi (0 : ℝ), psiRelativeError u) + 1 +
      Real.eulerMascheroniConstant = 0 :=
    tendsto_nhds_unique hf actual_scaled_laplace_tendsto_zero
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCentering/Variantfefff0f0c7c832f856c780b874bcdac78efa253942f7126d1b6fd7bbf50228fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCentering/Variantfefff0f0c7c832f856c780b874bcdac78efa253942f7126d1b6fd7bbf50228fe.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3a969acd0b600ce09e5216fed9e4fb48d6cb7b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
