# phase_integrable

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
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1b0670e-0f5b-7843-e953-82caa705d0c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd6b1c51-8088-d6c0-b2be-09f24c6d14c8",
  "kind": "theorem",
  "lexical_name": "phase_integrable",
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
  "slug": "phase-integrable--8c97f7e1a06bafbe75f58b52",
  "source": {
    "blob": "c5b527d2ac6dfb6a8bc62ff3ec9e7a625b3b3625",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 69,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c97f7e1a06bafbe75f58b525a23376fc8c4402a8efbdaa221ad95ee601b54f1",
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

Occurrence: `result:fd6b1c51-8088-d6c0-b2be-09f24c6d14c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phase_integrable (n : ℕ) (z : ℂ) :
    IntegrableOn (fun t : ℝ => (thetaPhi t : ℂ) *
      ((1 + Complex.I * (t : ℂ) * z / n) ^ (2 * n) +
        (1 - Complex.I * (t : ℂ) * z / n) ^ (2 * n))) (Ioi (0 : ℝ)) := by
  simp_rw [phase_binomial, mul_assoc, mul_sum, ← mul_assoc]
  exact (integrable_finsetSum _ fun k _ =>
    (phase_monomial_integrable n k z).const_mul
      (2 * ((2 * n).choose (2 * k) : ℂ))).congr (by
        filter_upwards [] with t
        apply Finset.sum_congr rfl
        intro k _
        ring)

/-- Integration of one phase monomial preserves the literal source moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5b527d2ac6dfb6a8bc62ff3ec9e7a625b3b3625` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
