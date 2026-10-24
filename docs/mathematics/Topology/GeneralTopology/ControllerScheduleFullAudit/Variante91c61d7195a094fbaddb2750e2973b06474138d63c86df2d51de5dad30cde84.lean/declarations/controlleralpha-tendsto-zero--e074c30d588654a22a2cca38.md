# controllerAlpha_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ce44396083803ac9a899ee3b8042d850c1dea4d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e91c61d7195a094fbaddb2750e2973b06474138d63c86df2d51de5dad30cde84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3886f81-cf9e-43ae-8542-169414314042",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19cad9be-ff20-fbb1-f087-f78381b68f47",
  "kind": "theorem",
  "lexical_name": "controllerAlpha_tendsto_zero",
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
  "slug": "controlleralpha-tendsto-zero--e074c30d588654a22a2cca38",
  "source": {
    "blob": "7ce44396083803ac9a899ee3b8042d850c1dea4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/ControllerScheduleFullAudit/Variante91c61d7195a094fbaddb2750e2973b06474138d63c86df2d51de5dad30cde84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e074c30d588654a22a2cca388de712219b7c2b2956989fb5694631f40d60950c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ControllerScheduleFullAudit/Variante91c61d7195a094fbaddb2750e2973b06474138d63c86df2d51de5dad30cde84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19cad9be-ff20-fbb1-f087-f78381b68f47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem controllerAlpha_tendsto_zero (q : ℕ → H) :
    Tendsto (controllerAlpha q) atTop (nhds 0) := by
  apply squeeze_zero'
  · filter_upwards [eventually_ge_atTop 1] with j hj
    exact (controllerAlpha_pos q j hj).le
  · filter_upwards [eventually_ge_atTop 1] with j hj
    exact controllerAlpha_le_one_div q j hj
  · simpa only [one_div, Function.comp_def] using
      (tendsto_inv_atTop_zero.comp (tendsto_natCast_atTop_atTop (R := ℝ)))

/-- The exact full-energy theorem bounds the actual output-side TT* mass on this schedule. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ControllerScheduleFullAudit/Variante91c61d7195a094fbaddb2750e2973b06474138d63c86df2d51de5dad30cde84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ControllerScheduleFullAudit/Variante91c61d7195a094fbaddb2750e2973b06474138d63c86df2d51de5dad30cde84.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ce44396083803ac9a899ee3b8042d850c1dea4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
