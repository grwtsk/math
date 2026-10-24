# ArchLineData.derivE_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afd609fd-58ed-ed37-46b2-4ca1579cc440",
  "kind": "theorem",
  "lexical_name": "ArchLineData.derivE_conj",
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
  "slug": "archlinedata-derive-conj--5a38c5ad62a0fc6b7ba0c2f5",
  "source": {
    "blob": "3e3b9bfcde9101b8f3c28b140c8bb809278cf521",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 817,
    "line": 800,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a38c5ad62a0fc6b7ba0c2f551b0fbf8264795b517c61cd203622a44161a1633",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afd609fd-58ed-ed37-46b2-4ca1579cc440`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 800–817.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ArchLineData.derivE_conj (h : ArchLineData c Λf Lpar) {t : ℝ} (ht : t ≠ 0) :
    deriv (EofL Λf) (conj ((c:ℂ) + t * I)) = conj (deriv (EofL Λf) ((c:ℂ) + t * I)) := by
  set s : ℂ := (c:ℂ) + t * I with hs
  have hA := h.analyticAt_E t
  rw [← hs] at hA
  have h1 : HasDerivAt (fun z => conj (EofL Λf (conj z))) (conj (deriv (EofL Λf) s)) (conj s) :=
    hA.differentiableAt.hasDerivAt.conj_conj
  have hopen : IsOpen {z : ℂ | 1 < z.re ∧ z.im ≠ 0} :=
    (isOpen_lt continuous_const Complex.continuous_re).inter (isOpen_ne_fun Complex.continuous_im continuous_const)
  have hmem : conj s ∈ {z : ℂ | 1 < z.re ∧ z.im ≠ 0} := by
    refine ⟨?_, ?_⟩
    · rw [Complex.conj_re, hs, re_lineC]; exact h.one_lt
    · rw [Complex.conj_im, hs, im_lineC]; exact neg_ne_zero.mpr ht
  have hev : (fun z => conj (EofL Λf (conj z))) =ᶠ[𝓝 (conj s)] EofL Λf := by
    filter_upwards [hopen.mem_nhds hmem] with z hz
    rw [h.E_conj hz.1 hz.2, Complex.conj_conj]
  exact (h1.congr_of_eventuallyEq hev.symm).deriv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean#L800).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e3b9bfcde9101b8f3c28b140c8bb809278cf521` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
