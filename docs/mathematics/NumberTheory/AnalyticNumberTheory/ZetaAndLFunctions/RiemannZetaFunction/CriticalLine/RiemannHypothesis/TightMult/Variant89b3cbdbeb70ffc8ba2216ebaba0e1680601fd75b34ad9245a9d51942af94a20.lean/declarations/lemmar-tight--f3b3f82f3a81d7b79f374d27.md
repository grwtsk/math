# lemmaR_tight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c561800-017b-f0e7-c574-8a0d758b7e76",
  "kind": "theorem",
  "lexical_name": "lemmaR_tight",
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
  "slug": "lemmar-tight--f3b3f82f3a81d7b79f374d27",
  "source": {
    "blob": "817f9e0633ed337423073013b2beab91245bb73b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 101,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TightMult/Variant89b3cbdbeb70ffc8ba2216ebaba0e1680601fd75b34ad9245a9d51942af94a20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3b3f82f3a81d7b79f374d2716e6078a80f333874dfe739cca9ff7e88bbbc5d5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TightMult/Variant89b3cbdbeb70ffc8ba2216ebaba0e1680601fd75b34ad9245a9d51942af94a20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c561800-017b-f0e7-c574-8a0d758b7e76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemmaR_tight (hc : 0 < c) (hm : ∀ j, (m j : ℝ) ≤ c) :
    2 * c * rtrace (Pmat (𝕜 := ℝ) (mR r m) (v r b) + Q r b c) - frobSq (Pmat (𝕜 := ℝ) (mR r m) (v r b) + Q r b c)
      = (∑ j, kc c (mR r m j * xsq (v r b) j)) + c ^ 2 * b := by
  rw [rtrace_PQ, frobSq_PQ]
  have : ∀ j, kc c (mR r m j * xsq (v r b) j) = 2 * c * m j - (m j : ℝ) ^ 2 := by
    intro j; rw [xsq_v, mul_one]; unfold mR; rw [kc_of_le (hm j)]
  simp_rw [this]
  rw [Finset.sum_sub_distrib, ← Finset.mul_sum]
  ring

/-- … with the hypotheses of Lemma R all met exactly (m_j ≥ 0, ‖v_j‖² = 1 ≤ 1, n₊(Q) = b). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TightMult/Variant89b3cbdbeb70ffc8ba2216ebaba0e1680601fd75b34ad9245a9d51942af94a20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TightMult/Variant89b3cbdbeb70ffc8ba2216ebaba0e1680601fd75b34ad9245a9d51942af94a20.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `817f9e0633ed337423073013b2beab91245bb73b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
