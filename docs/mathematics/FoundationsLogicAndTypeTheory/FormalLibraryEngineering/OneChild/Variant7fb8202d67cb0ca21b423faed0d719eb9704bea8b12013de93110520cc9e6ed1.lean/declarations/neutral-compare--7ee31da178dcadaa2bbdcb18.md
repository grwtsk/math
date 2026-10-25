# neutral_compare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de6e74cb-996f-3616-5c09-f28bd658721a",
  "kind": "theorem",
  "lexical_name": "neutral_compare",
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
  "slug": "neutral-compare--7ee31da178dcadaa2bbdcb18",
  "source": {
    "blob": "4838c179bfc17e51eb61e19b567b56a53e09f589",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 553,
    "line": 518,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant7fb8202d67cb0ca21b423faed0d719eb9704bea8b12013de93110520cc9e6ed1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ee31da178dcadaa2bbdcb18e5889bdbd04f5fc5b75feabb68435ff1e80f9702",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant7fb8202d67cb0ca21b423faed0d719eb9704bea8b12013de93110520cc9e6ed1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de6e74cb-996f-3616-5c09-f28bd658721a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–553.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neutral_compare {Γ Δ : List (Expr S)} {A : Expr S} {s : S}
    (hA : HasType P Γ A (.sort s)) (hΔ : ValidContext P Δ) (δ : Nat → Expr S)
    (hδ : TypedSubstitution P Γ Δ δ) (e : Environment Ω Δ) (θ : Bits) (dir : Bool) {i : Nat}
    (hi : head A = some i) (hg : Profile P Γ A ∈ C)
    (hp : Profile P Δ (A.subst δ) ∈ C)
    (ha : Ω.profile (A.subst (fun i => (δ i).subst e.images)) ∈ C)
    (hb : CompatibleBits (support (P := P) C Γ A) dir δ θ e.bits) :
    Below dir (eval Ω C Γ A (fun i => (δ i).subst e.images) θ) (R Ω C (A.subst δ) e) := by
  have ht := hA.subst hΔ δ hδ
  have hcomp : ((A.subst δ).subst e.images) = A.subst (fun i => (δ i).subst e.images) :=
    Expr.subst_subst _ _ _
  have hc := R_candidate Ω C hw (.sorted ht) e
  rw [hcomp] at hc
  rw [eval_head Ω C hg ha hi]
  rcases hb i false (support_head C hg hi) with ⟨j,hj,hbit⟩ | hbit
  · have hhead : head (A.subst δ).normalForm = some j :=
      head_normalForm (by rw [head_subst hi,hj]; rfl) (ht.weaklyNormalizing hw)
    have hnf := normal_subst_eq Ω hw (.sorted ht) e
    have ha' : Ω.profile (((A.subst δ).normalForm).subst e.images) ∈ C := by
      rw [←Ω.profile_normalForm (((A.subst δ).normalForm).subst
        e.images),hnf,Ω.profile_normalForm,hcomp]
      exact ha
    have he : R Ω C (A.subst δ) e =
        if e.bits j then Top Ω (A.subst (fun i => (δ i).subst e.images)).normalForm
        else Bottom Ω (A.subst (fun i => (δ i).subst e.images)).normalForm := by
      rw [R,eval_head Ω C (by rwa [Profile.normalForm]) ha' hhead,hnf,hcomp]
    rw [he,hbit]
    cases dir <;> exact Set.Subset.rfl
  · simp only [Bool.xor_false] at hbit
    rw [hbit]
    cases dir with
    | false => exact bottom_le hc
    | true => exact hc.upper

omit hw in
open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant7fb8202d67cb0ca21b423faed0d719eb9704bea8b12013de93110520cc9e6ed1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant7fb8202d67cb0ca21b423faed0d719eb9704bea8b12013de93110520cc9e6ed1.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4838c179bfc17e51eb61e19b567b56a53e09f589` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
