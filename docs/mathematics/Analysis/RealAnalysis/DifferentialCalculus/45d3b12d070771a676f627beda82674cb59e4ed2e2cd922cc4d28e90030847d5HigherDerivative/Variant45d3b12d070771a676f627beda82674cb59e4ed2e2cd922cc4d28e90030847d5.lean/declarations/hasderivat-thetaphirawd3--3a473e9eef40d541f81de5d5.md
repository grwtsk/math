# hasDerivAt_thetaPhiRawD3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "458f3c059197377d60b4128b9fba7f503183076c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5005a42-be39-9be6-4a9a-406b02a8c1af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b992792e-df11-8ab0-4ec7-271249d6b3ce",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_thetaPhiRawD3",
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
  "slug": "hasderivat-thetaphirawd3--3a473e9eef40d541f81de5d5",
  "source": {
    "blob": "458f3c059197377d60b4128b9fba7f503183076c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a473e9eef40d541f81de5d54c17e7decb4dde363a7d9c72b52885b9d805d66d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b992792e-df11-8ab0-4ec7-271249d6b3ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem hasDerivAt_thetaPhiRawD3 (t : ℝ) :
    HasDerivAt thetaPhiRawD3 (thetaPhiRawD4 t) t := by
  unfold thetaPhiRawD3
  convert! (((((hasDerivAt_thetaGaussianSum 4 9 t).const_mul (3270 * Real.pi ^ 2)).sub
    ((hasDerivAt_thetaGaussianSum 2 5 t).const_mul (375 * Real.pi))).sub
    ((hasDerivAt_thetaGaussianSum 6 13 t).const_mul (4232 * Real.pi ^ 3))).add
    ((hasDerivAt_thetaGaussianSum 8 17 t).const_mul (1440 * Real.pi ^ 4))).sub
    ((hasDerivAt_thetaGaussianSum 10 21 t).const_mul (128 * Real.pi ^ 5)) using 1
  norm_num [thetaPhiRawD4]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `458f3c059197377d60b4128b9fba7f503183076c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
