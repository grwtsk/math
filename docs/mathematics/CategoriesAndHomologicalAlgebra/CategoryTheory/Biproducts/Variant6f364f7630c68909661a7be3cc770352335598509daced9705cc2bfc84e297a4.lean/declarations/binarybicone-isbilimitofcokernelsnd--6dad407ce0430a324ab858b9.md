# BinaryBicone.isBilimitOfCokernelSnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce291bd827be6cc8d1482624c6c56b8b05d3d133dffdc7034949cdbb1a313232",
  "kind": "def",
  "lexical_name": "BinaryBicone.isBilimitOfCokernelSnd",
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
  "slug": "binarybicone-isbilimitofcokernelsnd--6dad407ce0430a324ab858b9",
  "source": {
    "blob": "8ef682df07d94bbafe66a33ce657e071f5563afa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 616,
    "line": 598,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant6f364f7630c68909661a7be3cc770352335598509daced9705cc2bfc84e297a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6dad407ce0430a324ab858b9484f695cee1322b55bfdc4e742d3ecb9f1506170",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant6f364f7630c68909661a7be3cc770352335598509daced9705cc2bfc84e297a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce291bd827be6cc8d1482624c6c56b8b05d3d133dffdc7034949cdbb1a313232`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 598–616.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BinaryBicone.isBilimitOfCokernelSnd {X Y : C} (b : BinaryBicone X Y)
    (hb : IsColimit b.inlCokernelCofork) : b.IsBilimit :=
  isBinaryBilimitOfIsColimit _ <|
    BinaryCofan.IsColimit.mk _ (fun f g => b.fst ≫ f + b.snd ≫ g) (fun f g => by simp)
      (fun f g => by simp) fun {T} f g m h₁ h₂ => by
      dsimp at m
      have h₁' : b.inl ≫ (m - (b.fst ≫ f + b.snd ≫ g)) = 0 := by simpa using sub_eq_zero.2 h₁
      have h₂' : b.inr ≫ (m - (b.fst ≫ f + b.snd ≫ g)) = 0 := by simpa using sub_eq_zero.2 h₂
      obtain ⟨q : Y ⟶ T, hq : b.snd ≫ q = m - (b.fst ≫ f + b.snd ≫ g)⟩ :=
        CokernelCofork.IsColimit.desc' hb _ h₁'
      rw [← sub_eq_zero, ← hq, ← Category.id_comp q, ← b.inr_snd, Category.assoc, hq, h₂',
        comp_zero]

set_option backward.isDefEq.respectTransparency false in
/-- Every split epi `f` with a kernel induces a binary bicone with `f` as its `snd` and
the kernel map as its `inl`.
We will show in `isBilimitBinaryBiconeOfIsSplitEpiOfKernel` that this binary bicone is in fact
already a biproduct. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant6f364f7630c68909661a7be3cc770352335598509daced9705cc2bfc84e297a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant6f364f7630c68909661a7be3cc770352335598509daced9705cc2bfc84e297a4.lean#L598).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ef682df07d94bbafe66a33ce657e071f5563afa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
