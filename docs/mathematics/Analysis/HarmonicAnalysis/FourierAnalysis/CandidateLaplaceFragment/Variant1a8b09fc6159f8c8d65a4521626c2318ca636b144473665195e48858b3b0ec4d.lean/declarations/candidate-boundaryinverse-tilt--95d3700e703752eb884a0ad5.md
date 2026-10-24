# candidate_boundaryInverse_tilt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "202bb15949b016af67054e8f5ce0908ac5d69b49",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a8b09fc6159f8c8d65a4521626c2318ca636b144473665195e48858b3b0ec4d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97b65f3c-9139-1590-1a98-af4838f7755d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:630ac263-f3cf-8874-40b6-42ad2be9906e",
  "kind": "theorem",
  "lexical_name": "candidate_boundaryInverse_tilt",
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
  "slug": "candidate-boundaryinverse-tilt--95d3700e703752eb884a0ad5",
  "source": {
    "blob": "202bb15949b016af67054e8f5ce0908ac5d69b49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 48,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/CandidateLaplaceFragment/Variant1a8b09fc6159f8c8d65a4521626c2318ca636b144473665195e48858b3b0ec4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95d3700e703752eb884a0ad585aadfbcf42ec6a2651ea9984fc137b626e155c0",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/CandidateLaplaceFragment/Variant1a8b09fc6159f8c8d65a4521626c2318ca636b144473665195e48858b3b0ec4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:630ac263-f3cf-8874-40b6-42ad2be9906e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidate_boundaryInverse_tilt (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (σ : ℝ) (hσ : 0 ≤ σ) (x : ℝ) :
    Complex.exp (-(σ : ℂ) * (x : ℂ)) * boundaryInverse (candidate X ε h) x =
      boundaryInverse (candidate X (ε + σ) h) x := by
  rw [candidate_boundaryInverse_shift X hX ε h hε hh hh1 σ hσ x]
  rw [← mul_assoc]
  have he : Complex.exp (-(σ : ℂ) * (x : ℂ)) * (Real.exp (x * σ) : ℂ) = 1 := by
    rw [Complex.ofReal_exp, ← Complex.exp_add]
    have hz : -(σ : ℂ) * (x : ℂ) + (x * σ : ℝ) = 0 := by push_cast; ring
    rw [hz, Complex.exp_zero]
  rw [he, one_mul]

/-- The genuine causal Laplace integral equals the original candidate on the closed right half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/CandidateLaplaceFragment/Variant1a8b09fc6159f8c8d65a4521626c2318ca636b144473665195e48858b3b0ec4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/CandidateLaplaceFragment/Variant1a8b09fc6159f8c8d65a4521626c2318ca636b144473665195e48858b3b0ec4d.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `202bb15949b016af67054e8f5ce0908ac5d69b49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
