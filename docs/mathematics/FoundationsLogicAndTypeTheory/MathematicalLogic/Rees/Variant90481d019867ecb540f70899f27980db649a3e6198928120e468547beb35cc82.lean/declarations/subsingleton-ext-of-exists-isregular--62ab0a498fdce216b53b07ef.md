# subsingleton_ext_of_exists_isRegular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "975c98c384e1b809585f53a4b04b98b00d51dfeb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/90481d019867ecb540f70899f27980db649a3e6198928120e468547beb35cc82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96141083-14ec-e2fe-65bf-b450eac68155",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b141688b-278a-4944-3412-9211c256041a",
  "kind": "lemma",
  "lexical_name": "subsingleton_ext_of_exists_isRegular",
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
  "slug": "subsingleton-ext-of-exists-isregular--62ab0a498fdce216b53b07ef",
  "source": {
    "blob": "975c98c384e1b809585f53a4b04b98b00d51dfeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rees/Variant90481d019867ecb540f70899f27980db649a3e6198928120e468547beb35cc82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62ab0a498fdce216b53b07efc6536d1bcc693339de6b59040c4d895b8016b0ca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Rees/Variant90481d019867ecb540f70899f27980db649a3e6198928120e468547beb35cc82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b141688b-278a-4944-3412-9211c256041a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subsingleton_ext_of_exists_isRegular [Small.{v} R] [IsNoetherianRing R] (I : Ideal R)
    (N : ModuleCat.{v} R) [Nfin : Module.Finite R N]
    (Nsupp : Module.support R N ⊆ PrimeSpectrum.zeroLocus I)
    (M : ModuleCat.{v} R) [Module.Finite R M] (smul_lt : I • (⊤ : Submodule R M) < ⊤)
    (rs : List R) (mem : ∀ r ∈ rs, r ∈ I) (reg : IsRegular M rs) :
    ∀ i < rs.length, Subsingleton (Ext N M i) := by
  generalize len : rs.length = n
  induction n generalizing M rs with
  | zero => simp
  | succ n ih =>
    rintro i hi
    have le_rad := Nsupp
    rw [Module.support_eq_zeroLocus, PrimeSpectrum.zeroLocus_subset_zeroLocus_iff] at le_rad
    match rs with
    | [] => simp at len
    | a :: rs' =>
      -- find a positive power of `a` lying in `Ann(N)`
      obtain ⟨k, hk⟩ := le_rad (mem a List.mem_cons_self)
      simp only [isRegular_cons_iff] at reg
      simp only [List.mem_cons, forall_eq_or_imp] at mem
      simp only [List.length_cons, Nat.add_left_inj] at len
      -- prepare to apply induction hypothesis to `M/aM`
      match i with
      | 0 => -- vanishing of `Ext N M 0` follows from `aᵏ ∈ Ann(N)`
        have : Subsingleton (N →ₗ[R] M) := subsingleton_linearMap_iff.mpr ⟨a ^ k, hk, reg.1.pow k⟩
        exact (Ext.addEquiv₀.trans ModuleCat.homAddEquiv).subsingleton
      | i + 1 =>
        let g := (AddCommGrpCat.ofHom ((Ext.mk₀ (smulShortComplex M a).f).postcomp N
          (add_zero (i + 1))))
        -- from the (covariant) long exact sequence given by `M.smulShortComplex a`
        -- we obtain scalar multiple by `a` on `Ext N M i` is injective
        have mono_g : Mono g := by
          apply (Ext.covariant_sequence_exact₁' N reg.1.smulShortComplex_shortExact i (i + 1)
            rfl).mono_g ((AddCommGrpCat.isZero_of_iff_subsingleton.mpr ?_).eq_zero_of_src _)
          apply ih ↧(QuotSMulTop a M) _ rs' mem.2 reg.2 len i (by omega)
          exact (smul_top_quotSMulTop_ne_top_of_smul_top_ne_top mem.1 smul_lt.ne).lt_top
        let gk := AddCommGrpCat.ofHom ((Ext.mk₀ (M.smulShortComplex (a ^ k)).f).postcomp N
          (add_zero (i + 1)))
        have mono_gk : Mono gk := by
          simp only [smulShortComplex_f_eq_smul_id, g, gk] at mono_g ⊢
          exact (Ext.postcomp_smul_id_mono_iff (a ^ k) (i + 1)).mpr <|
            ((Ext.postcomp_smul_id_mono_iff a (i + 1)).mp mono_g).pow k
        -- scalar multiple by `aᵏ` on `Ext N M i` is zero since `aᵏ ∈ Ann(N)`, so `Ext N M i` vanish
        have zero_gk : gk = 0 := Ext.postcomp_smul_id_eq_zero_of_mem_annihilator hk (i + 1)
        exact AddCommGrpCat.subsingleton_of_isZero (IsZero.of_mono_eq_zero _ zero_gk)

/--
**The Rees theorem**
For any `n : ℕ`, Noetherian ring `R`, `I : Ideal R`, and finitely generated and nontrivial
`R`-module `M` satisfying `IM < M`, the following are equivalent:
* for any `N : ModuleCat R` finitely generated and nontrivial with support contained in the
  zero locus of `I`, `∀ i < n, Ext N M i = 0`
* `∀ i < n, Ext (R ⧸ I) M i = 0`
* there exists a `N : ModuleCat R` finitely generated and nontrivial with support equal to the
  zero locus of `I`, `∀ i < n, Ext N M i = 0`
* there exists a `M`-regular sequence of length `n` with every element in `I`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Rees/Variant90481d019867ecb540f70899f27980db649a3e6198928120e468547beb35cc82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rees/Variant90481d019867ecb540f70899f27980db649a3e6198928120e468547beb35cc82.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `975c98c384e1b809585f53a4b04b98b00d51dfeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
