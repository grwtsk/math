# centeredPrefix_abs_le_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a87a6e57-de63-453f-b186-5a017db64763",
  "kind": "theorem",
  "lexical_name": "centeredPrefix_abs_le_cutoff",
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
  "slug": "centeredprefix-abs-le-cutoff--fa8f81f23e8a0de8bca67bc9",
  "source": {
    "blob": "7e4b0cf15e4c0ee6f231bdf1fd85cad445c55932",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 115,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointEnvelope/Variant91790d21873aebc92881713fd599e84008dc5d1ca8e39442916aac33aec3f11a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa8f81f23e8a0de8bca67bc9ce9919ec99a783ec4a879ef0775b2f899d284ccd",
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

Occurrence: `result:a87a6e57-de63-453f-b186-5a017db64763`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem centeredPrefix_abs_le_cutoff (A : ℝ) (hA : 1 ≤ A)
    (k : ℕ) (hk : vaughanCutoff A ≤ k) :
    |centeredPrefix A k| ≤ (vaughanCutoff A : ℝ) := by
  apply (centeredBeta_interval_abs_le _ _ _ (vaughanCutoff_pos A hA) le_rfl hk).trans
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro d _
      exact_mod_cast (abs_moebius_le_one (n := d))
    _ = (vaughanCutoff A : ℝ) := by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointEnvelope/Variant91790d21873aebc92881713fd599e84008dc5d1ca8e39442916aac33aec3f11a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointEnvelope/Variant91790d21873aebc92881713fd599e84008dc5d1ca8e39442916aac33aec3f11a.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e4b0cf15e4c0ee6f231bdf1fd85cad445c55932` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
