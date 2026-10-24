# Phi_circ.poles_simple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0314e11-0f56-ba88-fbcb-1f620b60cea4",
  "kind": "theorem",
  "lexical_name": "Phi_circ.poles_simple",
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
  "slug": "phi-circ-poles-simple--476462e5861ad2e9022a3e93",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1541,
    "line": 1511,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:476462e5861ad2e9022a3e93565d59369f7a9949fb12ae426b7162bd2d37a538",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0314e11-0f56-ba88-fbcb-1f620b60cea4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1511–1541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Phi_circ.poles_simple (ν ε : ℝ) (hν : ν > 0) (z : ℂ) :
    meromorphicOrderAt (Phi_circ ν ε) z = -1 ↔ ∃ n : ℤ, z = n - I * ν / (2 * π) := by
  constructor
  · exact fun h ↦ (Phi_circ.poles ν ε hν z).mp (h ▸ by decide)
  · rintro ⟨n, rfl⟩
    set z₀ := (n : ℂ) - I * ν / (2 * π)
    have hsub : MeromorphicAt (· - z₀ : ℂ → ℂ) z₀ := by fun_prop
    have hf : MeromorphicAt (Phi_circ ν ε) z₀ := (Phi_circ.meromorphic ν ε).meromorphicAt
    have heq : (fun z ↦ (z - z₀) * Phi_circ ν ε z) =ᶠ[nhdsWithin z₀ {z₀}ᶜ] ((· - z₀) * Phi_circ ν ε) :=
      Filter.Eventually.of_forall fun _ ↦ rfl
    have hord₀ : meromorphicOrderAt ((· - z₀) * Phi_circ ν ε) z₀ = 0 := by
      rw [← tendsto_ne_zero_iff_meromorphicOrderAt_eq_zero (hsub.mul hf)]
      exact ⟨_, by norm_num, (Phi_circ.residue ν ε hν n).congr' heq⟩
    have hord₁ : meromorphicOrderAt (· - z₀) z₀ = (1 : ℤ) := by
      rw [meromorphicOrderAt_eq_int_iff hsub]
      exact ⟨1, analyticAt_const, one_ne_zero, by simp⟩
    rw [meromorphicOrderAt_mul hsub hf, hord₁] at hord₀
    obtain ⟨m, hm⟩ := WithTop.ne_top_iff_exists.mp
      (by rintro h; simp [h] at hord₀ : meromorphicOrderAt (Phi_circ ν ε) z₀ ≠ ⊤)
    rw [← hm] at hord₀ ⊢
    have h1 : ((1 : ℤ) + m : WithTop ℤ) = (1 + m : ℤ) := by push_cast; ring_nf
    rw [h1] at hord₀
    have : 1 + m = 0 := by exact_mod_cast hord₀
    change (m : WithTop ℤ) = (-1 : ℤ); congr 1; omega

@[blueprint
  "B-def"
  (title := "Definition of $B^\\pm$")
  (statement := /--
  $B^\pm(s) = s/2 (\coth(s/2) \pm 1)$ with the convention $B^\pm(0) = 1$.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L1511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
