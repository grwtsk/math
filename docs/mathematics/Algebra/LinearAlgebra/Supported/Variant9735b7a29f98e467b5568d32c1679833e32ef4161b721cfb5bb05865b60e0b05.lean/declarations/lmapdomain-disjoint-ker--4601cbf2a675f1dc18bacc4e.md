# lmapDomain_disjoint_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66ebebca-707c-13f8-6045-e8c88e5fdbdb",
  "kind": "theorem",
  "lexical_name": "lmapDomain_disjoint_ker",
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
  "slug": "lmapdomain-disjoint-ker--4601cbf2a675f1dc18bacc4e",
  "source": {
    "blob": "df6e7106801a6a1319ed50a2a89b30e15cc760f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 253,
    "path": "GRWTSK/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4601cbf2a675f1dc18bacc4e961e2a5ddd2c751097785ac0c35172de93a831c6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66ebebca-707c-13f8-6045-e8c88e5fdbdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lmapDomain_disjoint_ker (f : α → α') {s : Set α}
    (H : ∀ a ∈ s, ∀ b ∈ s, f a = f b → a = b) :
    Disjoint (supported M R s) (ker (lmapDomain M R f)) := by
  rw [disjoint_iff_inf_le]
  rintro l ⟨h₁, h₂⟩
  rw [SetLike.mem_coe, mem_ker, lmapDomain_apply, mapDomain] at h₂
  simp only [mem_bot]; ext x
  have := Classical.decPred fun x => x ∈ s
  by_cases xs : x ∈ s
  · have : Finsupp.sum l (fun a => Finsupp.single (f a)) (f x) = 0 := by
      rw [h₂]
      rfl
    rw [Finsupp.sum_apply, Finsupp.sum_eq_single x, single_eq_same] at this
    · simpa
    · intro y hy xy
      simp only [SetLike.mem_coe, mem_supported, subset_def, mem_support_iff] at h₁
      simp [mt (H _ (h₁ _ hy) _ xs) xy]
    · simp +contextual
  · by_contra h
    exact xs (h₁ <| Finsupp.mem_support_iff.2 h)

end LMapDomain

/-- An equivalence of sets induces a linear equivalence of `Finsupp`s supported on those sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df6e7106801a6a1319ed50a2a89b30e15cc760f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
