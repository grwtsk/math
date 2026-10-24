# u_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b9d4818ff159efc9cfd66012e9f5a2d560fb041",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a8639dd-4b96-533d-c111-b1c173ae33e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51fc3b20-ba7c-9408-df95-2e18cf2faba4",
  "kind": "theorem",
  "lexical_name": "u_exists",
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
  "slug": "u-exists--c3479be5fc98025e5be79f1a",
  "source": {
    "blob": "0b9d4818ff159efc9cfd66012e9f5a2d560fb041",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 215,
    "path": "GRWTSK/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3479be5fc98025e5be79f1ab1da5278a281f2358f681074c945c5a74a83a4b9",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51fc3b20-ba7c-9408-df95-2e18cf2faba4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem u_exists :
    ∃ u : E → ℝ,
      ContDiff ℝ ⊤ u ∧ (∀ x, u x ∈ Icc (0 : ℝ) 1) ∧ support u = ball 0 1 ∧ ∀ x, u (-x) = u x := by
  have A : IsOpen (ball (0 : E) 1) := isOpen_ball
  obtain ⟨f, f_support, f_smooth, f_range⟩ :
    ∃ f : E → ℝ, f.support = ball (0 : E) 1 ∧ ContDiff ℝ ⊤ f ∧ Set.range f ⊆ Set.Icc 0 1
  exact A.exists_smooth_support_eq
  have B : ∀ x, f x ∈ Icc (0 : ℝ) 1 := fun x => f_range (mem_range_self x)
  refine' ⟨fun x => (f x + f (-x)) / 2, _, _, _, _⟩
  · exact (f_smooth.add (f_smooth.comp contDiff_neg)).div_const _
  · intro x
    simp only [mem_Icc]
    constructor
    · linarith [(B x).1, (B (-x)).1]
    · linarith [(B x).2, (B (-x)).2]
  · refine' support_eq_iff.2 ⟨fun x hx => _, fun x hx => _⟩
    · apply ne_of_gt
      have : 0 < f x := by
        apply lt_of_le_of_ne (B x).1 (Ne.symm _)
        rwa [← f_support] at hx
      linarith [(B (-x)).1]
    · have I1 : x ∉ support f := by rwa [f_support]
      have I2 : -x ∉ support f := by
        rw [f_support]
        simpa using hx
      simp only [mem_support, Classical.not_not] at I1 I2
      simp only [I1, I2, add_zero, zero_div]
  · intro x; simp only [add_comm, neg_neg]
#align exists_cont_diff_bump_base.u_exists ExistsContDiffBumpBase.u_exists

variable {E}

/-- An auxiliary function to construct partitions of unity on finite-dimensional real vector spaces,
which is smooth, symmetric, and with support equal to the unit ball. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b9d4818ff159efc9cfd66012e9f5a2d560fb041` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
