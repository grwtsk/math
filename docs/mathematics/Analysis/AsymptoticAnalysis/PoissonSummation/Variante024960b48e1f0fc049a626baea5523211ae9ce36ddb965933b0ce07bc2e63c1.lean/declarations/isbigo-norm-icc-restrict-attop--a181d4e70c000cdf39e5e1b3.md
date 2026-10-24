# isBigO_norm_Icc_restrict_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:214c8ee4-9f40-53f9-681e-5f1213b32471",
  "kind": "theorem",
  "lexical_name": "isBigO_norm_Icc_restrict_atTop",
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
  "slug": "isbigo-norm-icc-restrict-attop--a181d4e70c000cdf39e5e1b3",
  "source": {
    "blob": "6181f9999b89fb90b0272db2278bcaa3e3d950fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 129,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a181d4e70c000cdf39e5e1b32c9a2eba3b1bc341fa31704906f28e81ca6a9ffc",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:214c8ee4-9f40-53f9-681e-5f1213b32471`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBigO_norm_Icc_restrict_atTop {f : C(ℝ, E)} {b : ℝ} (hb : 0 < b)
    (hf : f =O[atTop] fun x : ℝ => |x| ^ (-b)) (R S : ℝ) :
    (fun x : ℝ => ‖f.restrict (Icc (x + R) (x + S))‖) =O[atTop] fun x : ℝ => |x| ^ (-b) := by
  -- First establish an explicit estimate on decay of inverse powers.
  -- This is logically independent of the rest of the proof, but of no mathematical interest in
  -- itself, so it is proved in-line rather than being formulated as a separate lemma.
  have claim : ∀ x : ℝ, max 0 (-2 * R) < x → ∀ y : ℝ, x + R ≤ y →
      y ^ (-b) ≤ (1 / 2) ^ (-b) * x ^ (-b) := fun x hx y hy ↦ by
    rw [max_lt_iff] at hx
    obtain ⟨hx1, hx2⟩ := hx
    rw [← mul_rpow] <;> try positivity
    apply rpow_le_rpow_of_nonpos <;> linarith
  -- Now the main proof.
  obtain ⟨c, hc, hc'⟩ := hf.exists_pos
  simp only [IsBigO, IsBigOWith, eventually_atTop] at hc' ⊢
  obtain ⟨d, hd⟩ := hc'
  refine ⟨c * (1 / 2) ^ (-b), ⟨max (1 + max 0 (-2 * R)) (d - R), fun x hx => ?_⟩⟩
  rw [ge_iff_le, max_le_iff] at hx
  have hx' : max 0 (-2 * R) < x := by linarith
  rw [max_lt_iff] at hx'
  rw [norm_norm, ContinuousMap.norm_le _ (by positivity)]
  refine fun y => (hd y.1 (by linarith [hx.1, y.2.1])).trans ?_
  have A : ∀ x : ℝ, 0 ≤ |x| ^ (-b) := fun x => by positivity
  rw [mul_assoc, mul_le_mul_left hc, norm_of_nonneg (A _), norm_of_nonneg (A _)]
  convert claim x (by linarith only [hx.1]) y.1 y.2.1
  · apply abs_of_nonneg; linarith [y.2.1]
  · exact abs_of_pos hx'.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6181f9999b89fb90b0272db2278bcaa3e3d950fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
