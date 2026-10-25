# exists_isRegular_of_exists_subsingleton_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a23c806-bb42-a3b8-c65c-280689f4286f",
  "kind": "lemma",
  "lexical_name": "exists_isRegular_of_exists_subsingleton_ext",
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
  "slug": "exists-isregular-of-exists-subsingleton-ext--c015f05043dd192ac766a51f",
  "source": {
    "blob": "0d90c92b043711f4ce2e5e4b3d610a215b3b1fa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rees/Variant8a5646cbfa64065e224068935d188dcb7dd3fe6483a77819ca289806201c8dcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c015f05043dd192ac766a51f0ae2a7ac05d9037a5e3d0c1da85ccb4ca2143aa6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Rees/Variant8a5646cbfa64065e224068935d188dcb7dd3fe6483a77819ca289806201c8dcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a23c806-bb42-a3b8-c65c-280689f4286f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isRegular_of_exists_subsingleton_ext [Small.{v} R] [IsNoetherianRing R] (I : Ideal R)
    (n : ℕ) (M : ModuleCat.{v} R) [Module.Finite R M] (smul_lt : I • (⊤ : Submodule R M) < ⊤)
    (N : ModuleCat.{v} R) [Module.Finite R N]
    (h_supp : Module.support R N = PrimeSpectrum.zeroLocus I)
    (h_ext : ∀ i < n, Subsingleton (Ext N M i)) :
    ∃ rs : List R, rs.length = n ∧ (∀ r ∈ rs, r ∈ I) ∧ IsRegular M rs := by
  induction n generalizing M with
  | zero =>
    have : Nontrivial M := (Submodule.nontrivial_iff R).mp (nontrivial_of_lt _ _ smul_lt)
    use []
    simp [isRegular_iff]
  | succ n ih =>
    rw [Module.support_eq_zeroLocus, PrimeSpectrum.zeroLocus_eq_iff] at h_supp
    -- use `Ext N M 0` vanish to obtain an `M`-regular element `x` in `Ann(N)`
    have : Subsingleton (N ⟶ M) := Ext.addEquiv₀.subsingleton_congr.mp (h_ext 0 n.zero_lt_succ)
    have : Subsingleton (N →ₗ[R] M) := ModuleCat.homAddEquiv.symm.subsingleton
    obtain ⟨x, mem_ann, hx⟩ := subsingleton_linearMap_iff.mp this
    -- take a power of it to make `xᵏ` fall into `I`
    obtain ⟨k, hk⟩ := le_of_le_of_eq Ideal.le_radical h_supp mem_ann
    -- verify that `N` indeed make `M ⧸ xᵏM` satisfy the induction hypothesis
    have h_ext' : ∀ i < n, Subsingleton (Ext N ↧(QuotSMulTop (x ^ k) M) i) := by
      intro i hi
      -- the vanishing of `Ext` is obtained from the (covariant) long exact sequence given by
      -- `M.smulShortComplex (x ^ k)`
      have zero1 := AddCommGrpCat.isZero_of_iff_subsingleton.mpr (h_ext i (by omega))
      have zero2 := AddCommGrpCat.isZero_of_iff_subsingleton.mpr (h_ext (i + 1) (by omega))
      exact AddCommGrpCat.subsingleton_of_isZero <| ShortComplex.Exact.isZero_of_both_zeros
        ((Ext.covariant_sequence_exact₃' N (hx.pow k).smulShortComplex_shortExact) i (i + 1) rfl)
        (zero1.eq_zero_of_src _) (zero2.eq_zero_of_tgt _)
    obtain ⟨rs, len, mem, reg⟩ := ih ↧(QuotSMulTop (x ^ k) M)
      (smul_top_quotSMulTop_ne_top_of_smul_top_ne_top hk smul_lt.ne).lt_top h_ext'
    use x ^ k :: rs
    simpa [len, hk] using ⟨mem, hx.pow k, reg⟩

/-- The implication `(4) → (1)` of `exists_isRegular_tfae`: for `M N` finitely generated
module over Noetherian ring `R` and ideal `I` satisfying `IM < M` and `Supp N ⊆ V(I)`,
if there is an `M`-regular sequence `rs` contained in `I`,
then `Ext N M i = 0` for all `i < rs.length`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Rees/Variant8a5646cbfa64065e224068935d188dcb7dd3fe6483a77819ca289806201c8dcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rees/Variant8a5646cbfa64065e224068935d188dcb7dd3fe6483a77819ca289806201c8dcb.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d90c92b043711f4ce2e5e4b3d610a215b3b1fa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
