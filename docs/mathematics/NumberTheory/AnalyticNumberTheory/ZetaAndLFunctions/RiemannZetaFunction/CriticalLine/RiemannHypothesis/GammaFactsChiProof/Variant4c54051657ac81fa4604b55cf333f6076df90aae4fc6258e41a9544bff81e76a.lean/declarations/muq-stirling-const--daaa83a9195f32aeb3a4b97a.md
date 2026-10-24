# muq_stirling_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffde98d45c12e4fe47fc916d8fb3b1ec5fd77b0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a8eb38f-d776-049e-6d60-5054981f6e64",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1873847f-f2b7-5bc6-4c84-ec476a5fe230",
  "kind": "theorem",
  "lexical_name": "muq_stirling_const",
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
  "slug": "muq-stirling-const--daaa83a9195f32aeb3a4b97a",
  "source": {
    "blob": "ffde98d45c12e4fe47fc916d8fb3b1ec5fd77b0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 95,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:daaa83a9195f32aeb3a4b97a3f9530813a2663b276ff4f2ddf559726533f1e06",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1873847f-f2b7-5bc6-4c84-ec476a5fe230`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem muq_stirling_const (hκ : κ ≤ 1) (hq : 1 ≤ q) (τ : ℝ) (hτ : 1 ≤ |τ|) :
    |muq κ q τ - (1 / (2 * Real.pi)) * Real.log (q * |τ| / (2 * Real.pi))|
      ≤ (20 / (2 * Real.pi)) / τ ^ 2 := by
  have hπ := Real.pi_pos
  have hq0 : (0 : ℝ) < q := by exact_mod_cast (lt_of_lt_of_le zero_lt_one hq)
  have ht : 1 / 2 ≤ |τ / 2| := by rw [abs_div, abs_two]; linarith
  have ha1 : absc κ ≤ 1 := (absc_lt_one hκ).le
  have h := Zeta23.StirlingVert.re_digamma_stirling' (a := absc κ) (absc_pos κ) ha1 ht
  have hτ0 : 0 < |τ| := by linarith
  set D : ℝ := (Complex.digamma (((absc κ : ℝ) : ℂ) + Complex.I * ((τ / 2 : ℝ) : ℂ))).re
    - Real.log |τ / 2| with hD
  have hD5 : |D| ≤ 5 / (τ / 2) ^ 2 := h
  have hlogs : Real.log (q * |τ| / (2 * Real.pi))
      = Real.log |τ / 2| + Real.log (q / Real.pi) := by
    rw [abs_div, abs_two, show (q : ℝ) * |τ| / (2 * Real.pi) = (|τ| / 2) * (q / Real.pi) by field_simp,
      Real.log_mul (by positivity) (by positivity)]
  have key : muq κ q τ - (1 / (2 * Real.pi)) * Real.log (q * |τ| / (2 * Real.pi))
      = (1 / (2 * Real.pi)) * D := by
    rw [muq_eq, hlogs, hD]; ring
  rw [key, abs_mul, abs_of_pos (by positivity : (0:ℝ) < 1 / (2 * Real.pi))]
  calc 1 / (2 * Real.pi) * |D| ≤ 1 / (2 * Real.pi) * (5 / (τ / 2) ^ 2) := by gcongr
    _ = 20 / (2 * Real.pi) / τ ^ 2 := by field_simp; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffde98d45c12e4fe47fc916d8fb3b1ec5fd77b0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
