# sq_le_exp_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc4de0a458dddc50707e33b265f51619135e3023",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 267,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:766476e7-d5fe-f043-a832-4bd46105b04d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fc1802c-29d1-85a1-ac83-296dba9fa8e3",
  "kind": "theorem",
  "lexical_name": "sq_le_exp_lower",
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
  "slug": "sq-le-exp-lower--49c318bba8294ddb91261f1f",
  "source": {
    "blob": "cc4de0a458dddc50707e33b265f51619135e3023",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 267,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49c318bba8294ddb91261f1fa3e84cfeb06ba214e4662edd0de9e79409a238a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fc1802c-29d1-85a1-ac83-296dba9fa8e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sq_le_exp_lower (T : ℝ) (hT : 20 ≤ T) :
    T^2 ≤ Real.exp (T-1/4) := by
  have hT0 : 0 ≤ T := by linarith
  have hp := Real.pow_div_factorial_le_exp (T-1/4) (show 0 ≤ T-1/4 by linarith) 4
  norm_num only [Nat.factorial, Nat.cast_ofNat] at hp
  have hm : (T/2)^4 ≤ (T-1/4)^4 := pow_le_pow_left₀ (by positivity) (by linarith) _
  have hsq : 400 ≤ T^2 := by nlinarith
  have h4 : 384*T^2 ≤ T^4 := by nlinarith [mul_nonneg (sq_nonneg T) (show 0 ≤ T^2-384 by linarith)]
  nlinarith

/-- A fully explicit real-scale endpoint interval, requiring no asymptotic premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc4de0a458dddc50707e33b265f51619135e3023` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
