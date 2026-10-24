# errorExp_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7854b641065a84a906b5d3ccefa70d327f6ae964",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4ee54df2aebf5e410152b123100532c19912f78f1f157c8f37031fa5c2e83823.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f53f2d0f-47c3-9b4e-ecb2-f997ac6a3f5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45ccacd2-ffba-a32f-db8f-769173228851",
  "kind": "theorem",
  "lexical_name": "errorExp_intervalIntegrable",
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
  "slug": "errorexp-intervalintegrable--637b2723a047ab8037ebc371",
  "source": {
    "blob": "7854b641065a84a906b5d3ccefa70d327f6ae964",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualMixedWorkFubini/Variant4ee54df2aebf5e410152b123100532c19912f78f1f157c8f37031fa5c2e83823.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:637b2723a047ab8037ebc3716a2a649d9fb68188b958b3daffe7ce55f8687d0e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualMixedWorkFubini/Variant4ee54df2aebf5e410152b123100532c19912f78f1f157c8f37031fa5c2e83823.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45ccacd2-ffba-a32f-db8f-769173228851`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem errorExp_intervalIntegrable (l b : ℝ) (hlb : l ≤ b) :
    IntervalIntegrable errorExp volume l b := by
  let P : ℝ → ℝ := fun t => 2 * Real.exp (t / 2)
  have hp : ContDiff ℝ 1 P := by
    dsimp only [P]
    fun_prop
  have hd (t : ℝ) : deriv P t = Real.exp (t / 2) := by
    have h := (((hasDerivAt_id t).div_const 2).exp).const_mul 2
    convert h.deriv using 1 <;> dsimp only [P, id_eq] <;> ring
  have h := mangoldtLogError_mul_deriv_intervalIntegrable l b hlb P hp
  simpa only [errorExp, hd] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualMixedWorkFubini/Variant4ee54df2aebf5e410152b123100532c19912f78f1f157c8f37031fa5c2e83823.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualMixedWorkFubini/Variant4ee54df2aebf5e410152b123100532c19912f78f1f157c8f37031fa5c2e83823.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7854b641065a84a906b5d3ccefa70d327f6ae964` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
