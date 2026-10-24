# Phi_circ.poles_simple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d67ce8a-aa62-25ff-b219-cf8d7e937aa3",
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
  "slug": "phi-circ-poles-simple--061931344113601d4085bfcb",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1538,
    "line": 1508,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:061931344113601d4085bfcb239e3387221c06f91df3b58b1da0bfbb93c80bcd",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d67ce8a-aa62-25ff-b219-cf8d7e937aa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1508–1538.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L1508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
