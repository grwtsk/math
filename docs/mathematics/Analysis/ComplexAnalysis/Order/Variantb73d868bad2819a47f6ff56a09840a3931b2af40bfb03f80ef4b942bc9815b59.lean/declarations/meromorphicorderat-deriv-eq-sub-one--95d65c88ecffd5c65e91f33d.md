# meromorphicOrderAt_deriv_eq_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16219d39-736b-6f5c-e1fb-b2f8b0b10a60",
  "kind": "lemma",
  "lexical_name": "meromorphicOrderAt_deriv_eq_sub_one",
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
  "slug": "meromorphicorderat-deriv-eq-sub-one--95d65c88ecffd5c65e91f33d",
  "source": {
    "blob": "66318e292faf329e4d3d60546920c8de585ae8d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1033,
    "line": 1010,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Order/Variantb73d868bad2819a47f6ff56a09840a3931b2af40bfb03f80ef4b942bc9815b59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95d65c88ecffd5c65e91f33d292aed8b47f6d2eb1aba0cae4a1d7987273471b3",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Order/Variantb73d868bad2819a47f6ff56a09840a3931b2af40bfb03f80ef4b942bc9815b59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16219d39-736b-6f5c-e1fb-b2f8b0b10a60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1010–1033.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma meromorphicOrderAt_deriv_eq_sub_one [CompleteSpace E] {f : 𝕜 → E} {x : 𝕜} {n : ℤ}
    (hn : (n : 𝕜) ≠ 0) (hf : meromorphicOrderAt f x = ↑n) :
    meromorphicOrderAt (deriv f) x = ↑(n - 1) := by
  have hmero : MeromorphicAt f x := meromorphicAt_of_meromorphicOrderAt_ne_zero (by aesop)
  rw [meromorphicOrderAt_eq_int_iff hmero] at hf
  rw [meromorphicOrderAt_eq_int_iff hmero.deriv]
  obtain ⟨g, hga, hg0, (hg : f =ᶠ[𝓝[≠] x] fun z ↦ (z - x) ^ n • g z)⟩ := hf
  refine ⟨fun z ↦ (n : 𝕜) • g z + (z - x) • deriv g z, by fun_prop, by simpa using ⟨hn, hg0⟩, ?_⟩
  filter_upwards [hga.eventually_analyticAt.filter_mono (nhdsWithin_le_nhds),
    eventually_mem_nhdsWithin, hg.nhdsNE_deriv] with z hgz hmem hz
  have hzx : z - x ≠ 0 := by simpa [sub_eq_zero] using hmem
  calc
    deriv f z = deriv (fun z ↦ (z - x) ^ n • g z) z :=
      hz
    _ = (z - x) ^ n • deriv g z + deriv ((· ^ n) ∘ (· - x)) z • g z :=
      deriv_fun_smul (by fun_prop (disch := grind)) hgz.differentiableAt
    _ = (z - x) ^ n • deriv g z + (n * (z - x) ^ (n - 1)) • g z := by
      rw [deriv_comp _ (by fun_prop (disch := grind)) (by fun_prop)]
      simp [deriv_zpow]
    _ = (z - x) ^ (n - 1) • ((n : 𝕜) • g z + (z - x) • deriv g z) := by
      simp [smul_smul, ← zpow_add_one₀ hzx, add_comm, mul_comm]

/-- Equivalent to `meromorphicOrderAt_deriv_eq_sub_one` with a slightly different statement so the
conclusion matches more targets -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Order/Variantb73d868bad2819a47f6ff56a09840a3931b2af40bfb03f80ef4b942bc9815b59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Order/Variantb73d868bad2819a47f6ff56a09840a3931b2af40bfb03f80ef4b942bc9815b59.lean#L1010).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66318e292faf329e4d3d60546920c8de585ae8d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
