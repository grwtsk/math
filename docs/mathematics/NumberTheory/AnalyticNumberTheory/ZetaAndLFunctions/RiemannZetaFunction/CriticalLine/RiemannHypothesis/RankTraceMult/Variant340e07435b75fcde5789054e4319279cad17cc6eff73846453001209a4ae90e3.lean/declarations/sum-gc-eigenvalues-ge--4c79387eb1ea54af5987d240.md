# sum_gc_eigenvalues_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee4cef35-ccf7-e148-8679-830210ef5658",
  "kind": "theorem",
  "lexical_name": "sum_gc_eigenvalues_ge",
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
  "slug": "sum-gc-eigenvalues-ge--4c79387eb1ea54af5987d240",
  "source": {
    "blob": "aafc530a17776d8aaf5d40bb1ca78e6131f6e88b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 278,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c79387eb1ea54af5987d240b6a972352a1fb0f28131e400ccb6b887492255ee",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee4cef35-ccf7-e148-8679-830210ef5658`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_gc_eigenvalues_ge {m : ι → ℝ} (hm : ∀ j, 0 ≤ m j) (v : ι → n → 𝕜) {c : ℝ} (hc : 0 ≤ c) :
    ∑ j, gc c (m j * xsq v j) ≤ ∑ i, gc c ((Pmat_posSemidef m v).1.eigenvalues i) := by
  have hM : ((Wmat m v)ᴴ * Wmat m v).PosSemidef := Matrix.posSemidef_conjTranspose_mul_self _
  calc ∑ j, gc c (m j * xsq v j) = ∑ j, gc c (RCLike.re (((Wmat m v)ᴴ * Wmat m v) j j)) :=
        Finset.sum_congr rfl fun j _ => by rw [re_gram_diag hm v j]
    _ ≤ ∑ j, gc c (hM.1.eigenvalues j) := sum_gc_diag_le_sum_gc_eigenvalues hM hc
    _ = ∑ i, gc c ((Pmat_posSemidef m v).1.eigenvalues i) :=
        (sum_eigenvalues_comm (Wmat m v) (gc c) (gc_zero hc)).symm

/-- **Lemma R (multiplicity-aware rank–trace inequality).**  For P = Σ_j m_j v_jv_j* (m_j ≥ 0), Q Hermitian with n₊(Q) ≤ b,
and c > 0:   c·tr P + Σ_j g_c(m_j‖v_j‖²) + 2c·tr Q − c²·b ≤ ‖P + Q‖_F². -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aafc530a17776d8aaf5d40bb1ca78e6131f6e88b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
