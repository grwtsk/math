# exists_isRegular_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:826b9fb5-ff4a-7444-e21b-17b5befae59b",
  "kind": "lemma",
  "lexical_name": "exists_isRegular_tfae",
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
  "slug": "exists-isregular-tfae--40553dd75f263b4cde0fe5c8",
  "source": {
    "blob": "0d90c92b043711f4ce2e5e4b3d610a215b3b1fa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 166,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rees/Variant8a5646cbfa64065e224068935d188dcb7dd3fe6483a77819ca289806201c8dcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40553dd75f263b4cde0fe5c8a5cfb3511784eb5a9f337af7ee518da2faa10a3b",
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

Occurrence: `result:826b9fb5-ff4a-7444-e21b-17b5befae59b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isRegular_tfae [Small.{v} R] [IsNoetherianRing R] (I : Ideal R) (n : ℕ)
    (M : ModuleCat.{v} R) [Module.Finite R M] (smul_lt : I • (⊤ : Submodule R M) < ⊤) :
    [∀ N : ModuleCat.{v} R, Nontrivial N → Module.Finite R N →
      Module.support R N ⊆ PrimeSpectrum.zeroLocus I → ∀ i < n, Subsingleton (Ext N M i),
      ∀ i < n, Subsingleton (Ext ↧(Shrink.{v} (R ⧸ I)) M i),
      ∃ N : ModuleCat R, Nontrivial N ∧ Module.Finite R N ∧
      Module.support R N = PrimeSpectrum.zeroLocus I ∧ ∀ i < n, Subsingleton (Ext N M i),
      ∃ rs : List R, rs.length = n ∧ (∀ r ∈ rs, r ∈ I) ∧ RingTheory.Sequence.IsRegular M rs
      ].TFAE := by
  -- two main implications `3 → 4` and `4 → 1` are separated out, the rest are trivial
  have ntrQ : Nontrivial (R ⧸ I) := by
    apply Submodule.Quotient.nontrivial_iff.mpr
    by_contra eq
    simp [eq] at smul_lt
  have suppQ : Module.support R (Shrink.{v} (R ⧸ I)) = PrimeSpectrum.zeroLocus I := by
    rw [(Shrink.linearEquiv R _).support_eq, Module.support_eq_zeroLocus, annihilator_quotient]
  tfae_have 1 → 2 := fun h1 i hi ↦ h1 ↧(Shrink.{v} (R ⧸ I))
    inferInstance inferInstance suppQ.subset i hi
  tfae_have 2 → 3 := fun h2 ↦ ⟨↧(Shrink.{v} (R ⧸ I)),
    inferInstance, Module.Finite.equiv (Shrink.linearEquiv R (R ⧸ I)).symm, suppQ, h2⟩
  tfae_have 3 → 4 := fun ⟨N, _, _, h_supp, h_ext⟩ ↦
    exists_isRegular_of_exists_subsingleton_ext I n M smul_lt N h_supp h_ext
  tfae_have 4 → 1 := fun ⟨rs, len, mem, reg⟩ N Nntr Nfin Nsupp i hi ↦
    subsingleton_ext_of_exists_isRegular I N Nsupp M smul_lt rs mem reg i (hi.trans_eq len.symm)
  tfae_finish

end ModuleCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Rees/Variant8a5646cbfa64065e224068935d188dcb7dd3fe6483a77819ca289806201c8dcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rees/Variant8a5646cbfa64065e224068935d188dcb7dd3fe6483a77819ca289806201c8dcb.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d90c92b043711f4ce2e5e4b3d610a215b3b1fa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
