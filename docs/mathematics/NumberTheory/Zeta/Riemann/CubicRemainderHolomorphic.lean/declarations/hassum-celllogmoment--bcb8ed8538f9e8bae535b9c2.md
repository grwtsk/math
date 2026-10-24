# hasSum_cellLogMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2cf6eb9-e0a9-5883-999e-4089db53981f",
  "kind": "theorem",
  "lexical_name": "hasSum_cellLogMoment",
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
  "slug": "hassum-celllogmoment--bcb8ed8538f9e8bae535b9c2",
  "source": {
    "blob": "ec0df0b92390c6702c5abeab349bf88ba08a9516",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 134,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcb8ed8538f9e8bae535b9c267e17048326ee31b95645b674c430926cad49682",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2cf6eb9-e0a9-5883-999e-4089db53981f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_cellLogMoment (s : ℂ) (hs : -2 < s.re) :
    HasSum (fun k : ℕ => cellLogMoment ((k : ℝ) + 1) s) (deriv cubicRemainder s) := by
  let σ₀ : ℝ := (s.re - 2) / 2
  have hσ : -2 < σ₀ := by dsimp [σ₀]; linarith
  have hu : Summable (fun k : ℕ => powerCell ((k : ℝ) + 1) (σ₀ + 2) / 48) := by
    simpa only [add_comm (1 : ℝ)] using summable_cell_majorant 1 σ₀ (by norm_num) hσ
  have h := Complex.hasSum_deriv_of_summable_norm (U := {w : ℂ | σ₀ < w.re}) hu
    (fun k => (differentiable_cell ((k : ℝ) + 1) (by linarith [Nat.cast_nonneg (α := ℝ) k])).differentiableOn)
    (isOpen_lt continuous_const Complex.continuous_re)
    (fun k w hw => norm_cell_le ((k : ℝ) + 1) σ₀ (by linarith [Nat.cast_nonneg (α := ℝ) k]) hσ w hw.le)
    (show s ∈ {w : ℂ | σ₀ < w.re} by dsimp [σ₀]; linarith)
  have hd (k : ℕ) : deriv (fun w : ℂ => cellRemainder ((k : ℝ) + 1) (-w)) s =
      cellLogMoment ((k : ℝ) + 1) s := (hasDerivAt_cell _ (by linarith [Nat.cast_nonneg (α := ℝ) k]) s).deriv
  convert h using 1 <;> first | rfl | (simp only [hd])

end
end GRWTSK.RiemannHypothesis.CubicRemainderHolomorphic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec0df0b92390c6702c5abeab349bf88ba08a9516` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
