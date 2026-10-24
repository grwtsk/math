# ContinuousMap.starSubalgebra_topologicalClosure_eq_top_of_separatesPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e48af84dd7f0f903c8d74511b500e7bda7eaf78",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 395,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43a3cda2-a0fe-405f-5e66-924d9655f5b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9464e6d-3ff5-5b38-da08-357082bd2493",
  "kind": "theorem",
  "lexical_name": "ContinuousMap.starSubalgebra_topologicalClosure_eq_top_of_separatesPoints",
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
  "slug": "continuousmap-starsubalgebra-topologicalclosure-eq-top-of-separatespoint--a5bdef8f7c66d1978dc7cd2d",
  "source": {
    "blob": "6e48af84dd7f0f903c8d74511b500e7bda7eaf78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 395,
    "path": "GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5bdef8f7c66d1978dc7cd2d202f5db3eb90b793cb6b2e739777f0670555fdd8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9464e6d-3ff5-5b38-da08-357082bd2493`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousMap.starSubalgebra_topologicalClosure_eq_top_of_separatesPoints
    (A : StarSubalgebra 𝕜 C(X, 𝕜)) (hA : A.SeparatesPoints) : A.topologicalClosure = ⊤ := by
  rw [StarSubalgebra.eq_top_iff]
  -- Let `I` be the natural inclusion of `C(X, ℝ)` into `C(X, 𝕜)`
  let I : C(X, ℝ) →L[ℝ] C(X, 𝕜) := ofRealCLM.compLeftContinuous ℝ X
  -- The main point of the proof is that its range (i.e., every real-valued function) is contained
  -- in the closure of `A`
  have key : LinearMap.range I ≤ (A.toSubmodule.restrictScalars ℝ).topologicalClosure := by
    -- Let `A₀` be the subalgebra of `C(X, ℝ)` consisting of `A`'s purely real elements; it is the
    -- preimage of `A` under `I`.  In this argument we only need its submodule structure.
    let A₀ : Submodule ℝ C(X, ℝ) := (A.toSubmodule.restrictScalars ℝ).comap I
    -- By `Subalgebra.SeparatesPoints.rclike_to_real`, this subalgebra also separates points, so
    -- we may apply the real Stone-Weierstrass result to it.
    have SW : A₀.topologicalClosure = ⊤ :=
      haveI := subalgebra_topologicalClosure_eq_top_of_separatesPoints _ hA.rclike_to_real
      congr_arg Subalgebra.toSubmodule this
    rw [← Submodule.map_top, ← SW]
    -- So it suffices to prove that the image under `I` of the closure of `A₀` is contained in the
    -- closure of `A`, which follows by abstract nonsense
    have h₁ := A₀.topologicalClosure_map I
    have h₂ := (A.toSubmodule.restrictScalars ℝ).map_comap_le I
    exact h₁.trans (Submodule.topologicalClosure_mono h₂)
  -- In particular, for a function `f` in `C(X, 𝕜)`, the real and imaginary parts of `f` are in the
  -- closure of `A`
  intro f
  let f_re : C(X, ℝ) := (⟨RCLike.re, RCLike.reCLM.continuous⟩ : C(𝕜, ℝ)).comp f
  let f_im : C(X, ℝ) := (⟨RCLike.im, RCLike.imCLM.continuous⟩ : C(𝕜, ℝ)).comp f
  have h_f_re : I f_re ∈ A.topologicalClosure := key ⟨f_re, rfl⟩
  have h_f_im : I f_im ∈ A.topologicalClosure := key ⟨f_im, rfl⟩
  -- So `f_re + I • f_im` is in the closure of `A`
  have := A.topologicalClosure.add_mem h_f_re (A.topologicalClosure.smul_mem h_f_im RCLike.I)
  rw [StarSubalgebra.mem_toSubalgebra] at this
  convert this
  -- And this, of course, is just `f`
  ext
  apply Eq.symm
  simp [I, f_re, f_im, mul_comm RCLike.I _]

end RCLike

section PolynomialFunctions

open StarSubalgebra Polynomial
open scoped Polynomial

/-- Polynomial functions in are dense in `C(s, ℝ)` when `s` is compact.

See `polynomialFunctions_closure_eq_top` for the special case `s = Set.Icc a b` which does not use
the full Stone-Weierstrass theorem. Of course, that version could be used to prove this one as
well. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e48af84dd7f0f903c8d74511b500e7bda7eaf78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
