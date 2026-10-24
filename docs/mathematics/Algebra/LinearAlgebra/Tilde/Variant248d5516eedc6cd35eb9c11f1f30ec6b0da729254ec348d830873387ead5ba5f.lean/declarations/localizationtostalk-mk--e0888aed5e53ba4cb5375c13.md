# localizationToStalk_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44a65da3bac6ece773f3afe802846643ecbf2a9b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 362,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/248d5516eedc6cd35eb9c11f1f30ec6b0da729254ec348d830873387ead5ba5f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ceb89d0-0732-445a-8cf5-593326e72ade",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2dd698d-bfea-d2e3-8ba4-f6bdcd168f44",
  "kind": "theorem",
  "lexical_name": "localizationToStalk_mk",
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
  "slug": "localizationtostalk-mk--e0888aed5e53ba4cb5375c13",
  "source": {
    "blob": "44a65da3bac6ece773f3afe802846643ecbf2a9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 362,
    "path": "GRWTSK/Algebra/LinearAlgebra/Tilde/Variant248d5516eedc6cd35eb9c11f1f30ec6b0da729254ec348d830873387ead5ba5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0888aed5e53ba4cb5375c1373b93e932725aa450e5a57d43a1f560a421d1302",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Tilde/Variant248d5516eedc6cd35eb9c11f1f30ec6b0da729254ec348d830873387ead5ba5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2dd698d-bfea-d2e3-8ba4-f6bdcd168f44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localizationToStalk_mk (x : PrimeSpectrum.Top R) (f : M) (s : x.asIdeal.primeCompl) :
    (localizationToStalk M x).hom (LocalizedModule.mk f s) =
      (tildeInModuleCat M).germ (PrimeSpectrum.basicOpen (s : R)) x s.2
        (const M f s (PrimeSpectrum.basicOpen s) fun _ => id) :=
  (Module.End.isUnit_iff _ |>.1 (isUnit_toStalk M x s)).injective <| by
  erw [← Module.End.mul_apply]
  simp only [IsUnit.mul_val_inv, Module.End.one_apply, Module.algebraMap_end_apply]
  show (M.tildeInModuleCat.germ ⊤ x ⟨⟩) ((toOpen M ⊤) f) = _
  rw [← map_smul]
  fapply TopCat.Presheaf.germ_ext (W := PrimeSpectrum.basicOpen s.1) (hxW := s.2)
    (F := M.tildeInModuleCat)
  · exact homOfLE le_top
  · exact 𝟙 _
  refine Subtype.eq <| funext fun y => show LocalizedModule.mk f 1 = _ from ?_
  #adaptation_note /-- https://github.com/leanprover/lean4/pull/6024
    added this refine hack to be able to add type hint in `change` -/
  refine (?_ : @Eq ?ty _ _)
  change LocalizedModule.mk f 1 = (s.1 • LocalizedModule.mk f _ : ?ty)
  rw [LocalizedModule.smul'_mk, LocalizedModule.mk_eq]
  exact ⟨1, by simp⟩

/--
The isomorphism of `R`-modules from the stalk of `M^~` at `x` to the localization of `M` at the
prime ideal corresponding to `x`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Tilde/Variant248d5516eedc6cd35eb9c11f1f30ec6b0da729254ec348d830873387ead5ba5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Tilde/Variant248d5516eedc6cd35eb9c11f1f30ec6b0da729254ec348d830873387ead5ba5f.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44a65da3bac6ece773f3afe802846643ecbf2a9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
