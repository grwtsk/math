# exists_FP_of_large

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59e814a9d575f97ea4410146754b2c83d82f718d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac9119e859b2ac36f0de810852dba0268d1b45f4fc33279af3d66e8727c179ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e8bf6d48-c518-3201-fc28-1659d7f1f3b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec9a6806-b213-190b-b317-48c6fbdab77c",
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
  "slug": "exists-fp-of-large--687e6337c8004de3cc8a86ff",
  "source": {
    "blob": "59e814a9d575f97ea4410146754b2c83d82f718d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 153,
    "path": "GRWTSK/Topology/GeneralTopology/Hindman/Variantac9119e859b2ac36f0de810852dba0268d1b45f4fc33279af3d66e8727c179ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:687e6337c8004de3cc8a86ff8782a26ebe5ced14bfc31d2e3f0ea55065764150",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hindman/Variantac9119e859b2ac36f0de810852dba0268d1b45f4fc33279af3d66e8727c179ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec9a6806-b213-190b-b317-48c6fbdab77c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_FP_of_large {M} [Semigroup M] (U : Ultrafilter M) (U_idem : U * U = U) (s₀ : Set M)
    (sU : s₀ ∈ U) : ∃ a, ∀ m, FP a m → m ∈ s₀ := by
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
              p.val.inter_subset_right (exists_elem p.property).some_mem)⟩
  use Stream'.corec elem succ (Subtype.mk s₀ sU)
  suffices ∀ (a : Stream' M) (m), FP a m → ∀ p, a = Stream'.corec elem succ p → m ∈ p.val by
    intro m hm
    exact this _ m hm ⟨s₀, sU⟩ rfl
  clear sU s₀
  intro a m h
  induction h with
  | head b =>
    rintro p rfl
    rw [Stream'.corec_eq, Stream'.head_cons]
    exact Set.inter_subset_left (Set.Nonempty.some_mem _)
  | of_tail b n h ih =>
    rintro p rfl
    refine Set.inter_subset_left (ih (succ p) ?_)
    rw [Stream'.corec_eq, Stream'.tail_cons]
  | cons b n h ih =>
    rintro p rfl
    have := Set.inter_subset_right (ih (succ p) ?_)
    · simpa only using! this
    rw [Stream'.corec_eq, Stream'.tail_cons]

/-- The strong form of **Hindman's theorem**: in any finite cover of an FP-set, one the parts
contains an FP-set. -/
@[to_additive FS_partition_regular /-- The strong form of **Hindman's theorem**: in any finite
cover of an FS-set, one the parts contains an FS-set. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hindman/Variantac9119e859b2ac36f0de810852dba0268d1b45f4fc33279af3d66e8727c179ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hindman/Variantac9119e859b2ac36f0de810852dba0268d1b45f4fc33279af3d66e8727c179ef.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e814a9d575f97ea4410146754b2c83d82f718d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
