# integral_phase_monomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5b527d2ac6dfb6a8bc62ff3ec9e7a625b3b3625",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b65a3bf-6302-c4d1-2621-35e406f4cf72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52906cfb-7cd7-16d8-272c-39be4d08c7ad",
  "kind": "theorem",
  "lexical_name": "integral_phase_monomial",
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
  "slug": "integral-phase-monomial--d4cb006e30315fc17d29d0cb",
  "source": {
    "blob": "c5b527d2ac6dfb6a8bc62ff3ec9e7a625b3b3625",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 83,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4cb006e30315fc17d29d0cbacb43208c224a4a4000ddcd12b77717474827537",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52906cfb-7cd7-16d8-272c-39be4d08c7ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_phase_monomial (n k : ℕ) (z : ℂ) :
    (∫ t in Ioi (0 : ℝ), (thetaPhi t : ℂ) *
      (Complex.I * (t : ℂ) * z / n) ^ (2 * k)) =
      (thetaMoment k : ℂ) * (Complex.I * z / (2 * (n : ℂ))) ^ (2 * k) := by
  have hf : (fun t : ℝ => (thetaPhi t : ℂ) *
      (Complex.I * (t : ℂ) * z / n) ^ (2 * k)) =
      fun t => ((thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ (2 * k)) *
        (Complex.I * z / (2 * (n : ℂ))) ^ (2 * k) := by
    funext t
    rw [phase_argument, mul_pow]
    ring
  rw [hf, integral_mul_const, thetaPhi_complex_even_moment_eq]
  rfl

/-- Binomial coefficients express the exact falling-factorial source normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5b527d2ac6dfb6a8bc62ff3ec9e7a625b3b3625` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
