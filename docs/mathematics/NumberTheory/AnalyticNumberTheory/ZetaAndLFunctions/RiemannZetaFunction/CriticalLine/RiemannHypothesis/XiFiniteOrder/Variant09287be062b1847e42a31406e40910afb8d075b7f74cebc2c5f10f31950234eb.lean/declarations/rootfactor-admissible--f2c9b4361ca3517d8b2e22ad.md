# RootFactor.admissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9836be91fa32ceb0cd87c01e106d4809d1cb5c4d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/09287be062b1847e42a31406e40910afb8d075b7f74cebc2c5f10f31950234eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3a8f823-8d77-160e-6e56-6e0565bbe6bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7bc6965-ff82-2816-889f-e6990f937d62",
  "kind": "theorem",
  "lexical_name": "RootFactor.admissible",
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
  "slug": "rootfactor-admissible--f2c9b4361ca3517d8b2e22ad",
  "source": {
    "blob": "9836be91fa32ceb0cd87c01e106d4809d1cb5c4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 99,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variant09287be062b1847e42a31406e40910afb8d075b7f74cebc2c5f10f31950234eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2c9b4361ca3517d8b2e22adc7b448b29a6e0045b0c6e8bf35e4085d37f8645b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variant09287be062b1847e42a31406e40910afb8d075b7f74cebc2c5f10f31950234eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7bc6965-ff82-2816-889f-e6990f937d62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RootFactor.admissible (H : ℝ) (R : ℕ)
    (hH : 0 < H) (hbound : (R : ℝ) + 1 ≤ Real.pi * H)
    (hheight : FiniteHeightRH H) (f : RootFactor) : f.toFactor.Admissible R := by
  cases f with
  | line ρ hz hl hi =>
    change 0 ≤ 1 / ρ.im ^ 2
    positivity
  | pair ρ hz ho hi =>
    have hγ := offline_above_height H hheight ρ hz hi ho
    have hθ := transverseAngle_lt (ρ.re - 1 / 2) ρ.im H (transverse_strip ρ hz) hH hγ
    have hR : 0 < (R : ℝ) + 1 := by positivity
    have hscale : 0 ≤ pairScale (ρ.re - 1 / 2) ρ.im := by unfold pairScale; positivity
    refine ⟨hscale, transverseAngle_nonnegative _ _, ?_⟩
    have hmul := mul_lt_mul_of_pos_left hθ hR
    have hdiv : ((R : ℝ) + 1) / H ≤ Real.pi := (div_le_iff₀ hH).mpr hbound
    have he : ((R : ℝ) + 1) * (1 / H) = ((R : ℝ) + 1) / H := by ring
    rw [he] at hmul
    exact hmul.le.trans hdiv

/-- The actual conjugate-paired product obligation. Its limit is the existing
arithmetic tape, not a chosen positive model. No determinant predicate occurs.
A proof must establish normalization, absence of real zeros, actual Hadamard
factorization, multiplicity coverage, locally uniform convergence, and coefficient
transport. Such a proof is not supplied by the record of the finite-height theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variant09287be062b1847e42a31406e40910afb8d075b7f74cebc2c5f10f31950234eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variant09287be062b1847e42a31406e40910afb8d075b7f74cebc2c5f10f31950234eb.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9836be91fa32ceb0cd87c01e106d4809d1cb5c4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
