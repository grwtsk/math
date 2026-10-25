# exists_isRegular_tfae

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
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/90481d019867ecb540f70899f27980db649a3e6198928120e468547beb35cc82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8c70332-4f17-0228-3f20-6629e1c4020d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8499e30-7ef6-3672-f889-d134397d634a",
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
  "slug": "exists-isregular-tfae--470e60929e227b682b15c64c",
  "source": {
    "blob": "975c98c384e1b809585f53a4b04b98b00d51dfeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rees/Variant90481d019867ecb540f70899f27980db649a3e6198928120e468547beb35cc82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:470e60929e227b682b15c64cbdcf25a32deb70941ec04187fa6acf25537b3c06",
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

Occurrence: `result:a8499e30-7ef6-3672-f889-d134397d634a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–184.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Rees/Variant90481d019867ecb540f70899f27980db649a3e6198928120e468547beb35cc82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rees/Variant90481d019867ecb540f70899f27980db649a3e6198928120e468547beb35cc82.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `975c98c384e1b809585f53a4b04b98b00d51dfeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
