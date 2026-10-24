# SpecModulesToSheafFullyFaithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:150676c78f5a9bdd5b228c710809bb3af37a2355ac6d9b3991ae899a78b12023",
  "kind": "def",
  "lexical_name": "SpecModulesToSheafFullyFaithful",
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
  "slug": "specmodulestosheaffullyfaithful--2b15eca0c7d0a4009b718016",
  "source": {
    "blob": "7b414ff838619701683daafb0d6146a5314aebc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 66,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b15eca0c7d0a4009b7180165ed7825e32c26b6091b20842727d8181272032d3",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:150676c78f5a9bdd5b228c710809bb3af37a2355ac6d9b3991ae899a78b12023`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SpecModulesToSheafFullyFaithful : (modulesSpecToSheaf (R := R)).FullyFaithful where
  preimage {M N} f := ⟨fun U ↦ ModuleCat.ofHom ⟨(f.1.app U).hom.toAddHom, by
    intro t m
    apply TopCat.Presheaf.IsSheaf.section_ext (modulesSpecToSheaf.obj N).2
    intro x hxU
    obtain ⟨a, ⟨_, ⟨r, rfl⟩, rfl⟩, hxr, hrU : basicOpen _ ≤ _⟩ :=
      PrimeSpectrum.isBasis_basic_opens.exists_subset_of_mem_open hxU U.unop.2
    refine ⟨_, hrU, hxr, ?_⟩
    refine Eq.trans ?_ (N.val.map_smul (homOfLE hrU).op t _).symm
    change N.1.map (homOfLE hrU).op (f.1.app _ _) = _ • N.1.map (homOfLE hrU).op (f.1.app _ _)
    have (x : _) :
        f.1.app _ (M.1.map (homOfLE hrU).op _) = N.1.map (homOfLE hrU).op (f.1.app _ x) :=
      congr($(f.1.naturality (homOfLE hrU).op).hom x)
    rw [← this, ← this, M.val.map_smul]
    generalize (Spec R).ringCatSheaf.obj.map (homOfLE hrU).op t = t
    let := Module.compHom (R := Γ(Spec R, basicOpen r)) Γ(M, basicOpen r)
      (algebraMap R Γ(Spec R, basicOpen r))
    have : IsScalarTower R Γ(Spec R, basicOpen r) Γ(M, basicOpen r) :=
      .of_algebraMap_smul fun _ _ ↦ rfl
    let := Module.compHom Γ(N, basicOpen r) (algebraMap R Γ(Spec R, basicOpen r))
    have : IsScalarTower R Γ(Spec R, basicOpen r) Γ(N, basicOpen r) :=
      .of_algebraMap_smul fun _ _ ↦ rfl
    exact (IsLocalization.linearMap_compatibleSMul (.powers (M := R) r)
      Γ(Spec R, basicOpen r) Γ(M, basicOpen r) Γ(N, basicOpen r)).map_smul
      (f.hom.app _).hom _ _⟩, fun i ↦ by ext x; exact congr($(f.1.naturality i).hom x)⟩
  map_preimage f := rfl
  preimage_map f := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b414ff838619701683daafb0d6146a5314aebc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
