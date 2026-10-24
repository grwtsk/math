# IsWeaklyRegular.prototype_perm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88ff5faa-d0e6-720b-cef3-72e492ecb0a6",
  "kind": "lemma",
  "lexical_name": "IsWeaklyRegular.prototype_perm",
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
  "slug": "isweaklyregular-prototype-perm--0bc1eedefef2099488e4177e",
  "source": {
    "blob": "8dc8fbf34801ddba52953c5a35aa51d0ddbb6ba4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 640,
    "line": 607,
    "path": "GRWTSK/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bc1eedefef2099488e4177e09ad8bb96db97ac70288499bb4eda58c4e8980a2",
  "verification": {
    "reference": "docs/verification/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88ff5faa-d0e6-720b-cef3-72e492ecb0a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 607–640.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsWeaklyRegular.prototype_perm {rs : List R} (h : IsWeaklyRegular M rs)
    {rs'} (h'' : rs ~ rs') (h' : ∀ a b rs', (a :: b :: rs') <+~ rs →
      let K := torsionBy R (M ⧸ (Ideal.ofList rs' • ⊤ : Submodule R M)) b
      K = a • K → K = ⊥) : IsWeaklyRegular M rs' :=
  have H := LinearEquiv.isWeaklyRegular_congr <| quotEquivOfEqBot _ <|
    Eq.trans (congrArg (· • ⊤) Ideal.ofList_nil) (bot_smul ⊤)
  (H rs').mp <| (aux [] h'' (.refl rs) (h''.symm.subperm)) <| (H rs).mpr h
  where aux {rs₁ rs₂} (rs₀ : List R)
    (h₁₂ : rs₁ ~ rs₂) (H₁ : rs₀ ++ rs₁ <+~ rs) (H₃ : rs₀ ++ rs₂ <+~ rs)
    (h : IsWeaklyRegular (M ⧸ (Ideal.ofList rs₀ • ⊤ : Submodule R M)) rs₁) :
    IsWeaklyRegular (M ⧸ (Ideal.ofList rs₀ • ⊤ : Submodule R M)) rs₂ := by {
  induction h₁₂ generalizing rs₀ with
  | nil => exact .nil R _
  | cons r _ ih =>
    let e := quotOfListConsSMulTopEquivQuotSMulTopOuter M r rs₀
    rw [isWeaklyRegular_cons_iff, ← e.isWeaklyRegular_congr] at h ⊢
    refine h.imp_right (ih (r :: rs₀) ?_ ?_) <;>
      exact List.perm_middle.subperm_right.mp ‹_›
  | swap a b t =>
    rw [show ∀ x y z, x :: y :: z = [x, y] ++ z from fun _ _ _ => rfl,
      isWeaklyRegular_append_iff] at h ⊢
    have : Ideal.ofList [b, a] = Ideal.ofList [a, b] :=
      congrArg Ideal.span <| Set.ext fun _ => (List.Perm.swap a b []).mem_iff
    rw [(quotEquivOfEq _ _ (congrArg₂ _ this rfl)).isWeaklyRegular_congr] at h
    rw [List.append_cons, List.append_cons, List.append_assoc _ [b] [a]] at H₁
    apply (List.sublist_append_left (rs₀ ++ [b, a]) _).subperm.trans at H₁
    apply List.perm_append_comm.subperm.trans at H₁
    exact h.imp_left (swap · (h' b a rs₀ H₁))
  | trans h₁₂ _ ih₁₂ ih₂₃ =>
    have H₂ := (h₁₂.append_left rs₀).subperm_right.mp H₁
    exact ih₂₃ rs₀ H₂ H₃ (ih₁₂ rs₀ H₁ H₂ h) }

-- putting `{rs' : List R}` and `h2` after `h3` would be better for partial
-- application, but this argument order seems nicer overall
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean#L607).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dc8fbf34801ddba52953c5a35aa51d0ddbb6ba4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
