# exp_gt_square_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37276813-c57e-c07c-2f29-3f6e3eef40e7",
  "kind": "theorem",
  "lexical_name": "exp_gt_square_add_one",
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
  "slug": "exp-gt-square-add-one--01022b131803c9d3898a529f",
  "source": {
    "blob": "7e4b0cf15e4c0ee6f231bdf1fd85cad445c55932",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointEnvelope/Variant91790d21873aebc92881713fd599e84008dc5d1ca8e39442916aac33aec3f11a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01022b131803c9d3898a529f704cc581b4d8e8b6d2ec4eb7e906bd90a71c34fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointEnvelope/Variant91790d21873aebc92881713fd599e84008dc5d1ca8e39442916aac33aec3f11a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37276813-c57e-c07c-2f29-3f6e3eef40e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exp_gt_square_add_one (A : ℝ) (hA : 1 ≤ A) :
    A ^ 2 + 1 < Real.exp A := by
  have hsum := Real.sum_le_exp_of_nonneg (by linarith : 0 ≤ A) 5
  norm_num [Finset.sum_range_succ, Nat.factorial] at hsum
  have ht : 0 ≤ A - 1 := sub_nonneg.mpr hA
  have hm : 0 < (A - 1) ^ 4 / 24 + (A - 1) ^ 3 / 3 +
      (A - 1) ^ 2 / 4 + 2 * (A - 1) / 3 + 17 / 24 := by positivity
  have he : 1 + A + A ^ 2 / 2 + A ^ 3 / 6 + A ^ 4 / 24 - (A ^ 2 + 1) =
      (A - 1) ^ 4 / 24 + (A - 1) ^ 3 / 3 +
        (A - 1) ^ 2 / 4 + 2 * (A - 1) / 3 + 17 / 24 := by ring
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointEnvelope/Variant91790d21873aebc92881713fd599e84008dc5d1ca8e39442916aac33aec3f11a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointEnvelope/Variant91790d21873aebc92881713fd599e84008dc5d1ca8e39442916aac33aec3f11a.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e4b0cf15e4c0ee6f231bdf1fd85cad445c55932` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
