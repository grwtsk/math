# literatureRHSchi_eq_integral_nu

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72fa5830-d20b-cf83-bb0f-1305d074bd7b",
  "kind": "theorem",
  "lexical_name": "literatureRHSchi_eq_integral_nu",
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
  "slug": "literaturerhschi-eq-integral-nu--7718784bd53b6932db8564e8",
  "source": {
    "blob": "0ad7b731b075be77880c8d65388a34b96aaf7eed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 240,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EFLitChi/Variant9fbc73d056273409c0e8c9450fe5a682a783415fb1292f73d037081a96ce7e7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7718784bd53b6932db8564e864db2667d87c8db414a336fe91541d36988817c5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EFLitChi/Variant9fbc73d056273409c0e8c9450fe5a682a783415fb1292f73d037081a96ce7e7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72fa5830-d20b-cf83-bb0f-1305d074bd7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literatureRHSchi_eq_integral_nu {κ q : ℕ} {c : ℕ → ℂ} {k : ℝ → ℂ} {L : ℝ}
    (hq : 1 ≤ q) (_hL : 0 < L) (hk : Continuous k)
    (hks : tsupport k ⊆ Icc (-L) L) (hFk : Integrable (FourierTransform.fourier k))
    (hμ : Integrable (fun τ : ℝ => paperFT k τ * (muq κ q τ : ℂ))) :
    literatureRHSchi κ q c k = ∫ τ : ℝ, paperFT k τ * (nuXc κ q c (Real.exp L) τ : ℂ) := by
  have hP := integrable_paperFT_mul_PXc (k := k) c L hFk
  unfold literatureRHSchi
  rw [prime_term_chi (q := q) hk hks hFk, gamma_term_chi hq k, ← integral_add hP hμ]
  congr 1
  ext τ
  simp only [nuXc]
  push_cast
  ring


/-- From H-Gamma(chi): |mu_chi(tau)| <= K2 (1+|tau|)^(1/2) for all tau (continuity on [-1,1];
Stirling with log(q|tau|/2pi) and log x <= 2 x^(1/2) for |tau| >= 1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EFLitChi/Variant9fbc73d056273409c0e8c9450fe5a682a783415fb1292f73d037081a96ce7e7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EFLitChi/Variant9fbc73d056273409c0e8c9450fe5a682a783415fb1292f73d037081a96ce7e7b.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ad7b731b075be77880c8d65388a34b96aaf7eed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
