# hardyW_analyticOnNhd_disc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90714171-0000-dbb2-eed5-d68f38e75d81",
  "kind": "theorem",
  "lexical_name": "hardyW_analyticOnNhd_disc",
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
  "slug": "hardyw-analyticonnhd-disc--dc9b7487513275019cbb63c0",
  "source": {
    "blob": "b6005991cec012a0a73717175399c62d2a53bded",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 136,
    "path": "GRWTSK/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc9b7487513275019cbb63c0c2196af26334a22026fcc8310e10ef26307e428a",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90714171-0000-dbb2-eed5-d68f38e75d81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hardyW_analyticOnNhd_disc (t : ℝ) (ht : 2 ≤ |t|) :
    AnalyticOnNhd ℂ hardyW (closedBall ((2 : ℂ) + t * I) (91 / 50)) := fun _ hz =>
  hardyW_analyticAt (im_ne_zero_of_mem_closedBall (by norm_num) ht hz)

/-! ### the lower bound on Re s = 2 -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6005991cec012a0a73717175399c62d2a53bded` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
