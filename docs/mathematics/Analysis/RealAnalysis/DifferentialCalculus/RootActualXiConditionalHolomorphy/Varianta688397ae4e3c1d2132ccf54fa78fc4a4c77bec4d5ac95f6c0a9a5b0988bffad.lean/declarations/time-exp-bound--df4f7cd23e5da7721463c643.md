# time_exp_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a08d18d-ecfd-7b19-87ce-815a085c3dc8",
  "kind": "theorem",
  "lexical_name": "time_exp_bound",
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
  "slug": "time-exp-bound--df4f7cd23e5da7721463c643",
  "source": {
    "blob": "59fda7885c55b4eeb5b23e6e2b010842a75cb98a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 20,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Varianta688397ae4e3c1d2132ccf54fa78fc4a4c77bec4d5ac95f6c0a9a5b0988bffad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df4f7cd23e5da7721463c6431e8075fd57ba993a1c8375c6399fa6b91acdbea8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Varianta688397ae4e3c1d2132ccf54fa78fc4a4c77bec4d5ac95f6c0a9a5b0988bffad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a08d18d-ecfd-7b19-87ce-815a085c3dc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem time_exp_bound {c t : ℝ} (hc : 0 < c) (_ht : 0 ≤ t) :
    t ≤ (1 / c) * Real.exp (c * t) := by
  have he := Real.add_one_le_exp (c * t)
  have he2 : t * c ≤ Real.exp (c * t) := by nlinarith
  have he3 := (le_div_iff₀ hc).mpr he2
  simpa only [div_eq_mul_inv, one_mul, mul_one, mul_comm] using he3

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Varianta688397ae4e3c1d2132ccf54fa78fc4a4c77bec4d5ac95f6c0a9a5b0988bffad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Varianta688397ae4e3c1d2132ccf54fa78fc4a4c77bec4d5ac95f6c0a9a5b0988bffad.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59fda7885c55b4eeb5b23e6e2b010842a75cb98a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
