# exists_sub_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53c7ebcc-1e3e-2e96-ab65-ed0f14af41e9",
  "kind": "theorem",
  "lexical_name": "exists_sub_mem",
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
  "slug": "exists-sub-mem--dc320b5c063559fa197f6373",
  "source": {
    "blob": "619506e8ca5f79eb54d81c4542f7c92587cc90c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 446,
    "path": "GRWTSK/Algebra/Quotient/Variant474a0196ef054b83fe8fc4104edf892552fd28db216efd369a5750bd4f8d3e3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc320b5c063559fa197f6373f51395f43d9754a272c87ed12cd8194144c0e817",
  "verification": {
    "reference": "docs/verification/Algebra/Quotient/Variant474a0196ef054b83fe8fc4104edf892552fd28db216efd369a5750bd4f8d3e3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53c7ebcc-1e3e-2e96-ab65-ed0f14af41e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_sub_mem [Finite ι] {f : ι → Ideal R} (hf : ∀ i j, i ≠ j → f i ⊔ f j = ⊤)
    (g : ι → R) : ∃ r : R, ∀ i, r - g i ∈ f i := by
  cases nonempty_fintype ι
  have : ∃ φ : ι → R, (∀ i, φ i - 1 ∈ f i) ∧ ∀ i j, i ≠ j → φ i ∈ f j := by
    have := exists_sub_one_mem_and_mem (Finset.univ : Finset ι) fun i _ j _ hij => hf i j hij
    choose φ hφ using this
    exists fun i => φ i (Finset.mem_univ i)
    exact ⟨fun i => (hφ i _).1, fun i j hij => (hφ i _).2 j (Finset.mem_univ j) hij.symm⟩
  rcases this with ⟨φ, hφ1, hφ2⟩
  use ∑ i, g i * φ i
  intro i
  rw [← Quotient.mk_eq_mk_iff_sub_mem, map_sum]
  refine' Eq.trans (Finset.sum_eq_single i _ _) _
  · intro j _ hji
    rw [Quotient.eq_zero_iff_mem]
    exact (f i).mul_mem_left _ (hφ2 j i hji)
  · intro hi
    exact (hi <| Finset.mem_univ i).elim
  specialize hφ1 i
  rw [← Quotient.mk_eq_mk_iff_sub_mem, RingHom.map_one] at hφ1
  rw [RingHom.map_mul, hφ1, mul_one]
#align ideal.exists_sub_mem Ideal.exists_sub_mem

/-- The homomorphism from `R/(⋂ i, f i)` to `∏ i, (R / f i)` featured in the Chinese
  Remainder Theorem. It is bijective if the ideals `f i` are comaximal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Quotient/Variant474a0196ef054b83fe8fc4104edf892552fd28db216efd369a5750bd4f8d3e3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Quotient/Variant474a0196ef054b83fe8fc4104edf892552fd28db216efd369a5750bd4f8d3e3e.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `619506e8ca5f79eb54d81c4542f7c92587cc90c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
