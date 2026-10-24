# exists_FP_of_large

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6bb1c6db54ca2124297ce7094ea64406de55ecf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5209a626-f834-667d-17d1-b3ad2822b2ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc238db9-8e48-1c31-f0e7-cc542060a6cc",
  "kind": "theorem",
  "lexical_name": "exists_FP_of_large",
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
  "slug": "exists-fp-of-large--4080a756f019b0c277db54ae",
  "source": {
    "blob": "f6bb1c6db54ca2124297ce7094ea64406de55ecf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 174,
    "path": "GRWTSK/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4080a756f019b0c277db54aeb6817ade945fab33fb3255fdc646ece4239fef91",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc238db9-8e48-1c31-f0e7-cc542060a6cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_FP_of_large {M} [Semigroup M] (U : Ultrafilter M) (U_idem : U * U = U) (s₀ : Set M)
    (sU : s₀ ∈ U) : ∃ a, FP a ⊆ s₀ := by
  /- Informally: given a `U`-large set `s₀`, the set `s₀ ∩ { m | ∀ᶠ m' in U, m * m' ∈ s₀ }` is also
  `U`-large (since `U` is idempotent). Thus in particular there is an `a₀` in this intersection. Now
  let `s₁` be the intersection `s₀ ∩ { m | a₀ * m ∈ s₀ }`. By choice of `a₀`, this is again
  `U`-large, so we can repeat the argument starting from `s₁`, obtaining `a₁`, `s₂`, etc.
  This gives the desired infinite sequence. -/
  have exists_elem : ∀ {s : Set M} (_hs : s ∈ U), (s ∩ { m | ∀ᶠ m' in U, m * m' ∈ s }).Nonempty :=
    fun {s} hs => Ultrafilter.nonempty_of_mem (inter_mem hs <| by rwa [← U_idem] at hs)
  let elem : { s // s ∈ U } → M := fun p => (exists_elem p.property).some
  let succ : {s // s ∈ U} → {s // s ∈ U} := fun (p : {s // s ∈ U}) =>
        ⟨p.val ∩ {m : M | elem p * m ∈ p.val},
         inter_mem p.property
           (show (exists_elem p.property).some ∈ {m : M | ∀ᶠ (m' : M) in ↑U, m * m' ∈ p.val} from
              p.val.inter_subset_right {m : M | ∀ᶠ (m' : M) in ↑U, m * m' ∈ p.val}
                (exists_elem p.property).some_mem)⟩
  use Stream'.corec elem succ (Subtype.mk s₀ sU)
  suffices ∀ (a : Stream' M), ∀ m ∈ FP a, ∀ p, a = Stream'.corec elem succ p → m ∈ p.val by
    intro m hm
    exact this _ m hm ⟨s₀, sU⟩ rfl
  clear sU s₀
  intro a m h
  induction' h with b b n h ih b n h ih
  · rintro p rfl
    rw [Stream'.corec_eq, Stream'.head_cons]
    exact Set.inter_subset_left _ _ (Set.Nonempty.some_mem _)
  · rintro p rfl
    refine' Set.inter_subset_left _ _ (ih (succ p) _)
    rw [Stream'.corec_eq, Stream'.tail_cons]
  · rintro p rfl
    have := Set.inter_subset_right _ _ (ih (succ p) ?_)
    · simpa only using this
    rw [Stream'.corec_eq, Stream'.tail_cons]
set_option linter.uppercaseLean3 false in
#align hindman.exists_FP_of_large Hindman.exists_FP_of_large
set_option linter.uppercaseLean3 false in
#align hindman.exists_FS_of_large Hindman.exists_FS_of_large

/-- The strong form of **Hindman's theorem**: in any finite cover of an FP-set, one the parts
contains an FP-set. -/
@[to_additive FS_partition_regular
      "The strong form of **Hindman's theorem**: in any finite cover of
      an FS-set, one the parts contains an FS-set."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6bb1c6db54ca2124297ce7094ea64406de55ecf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
