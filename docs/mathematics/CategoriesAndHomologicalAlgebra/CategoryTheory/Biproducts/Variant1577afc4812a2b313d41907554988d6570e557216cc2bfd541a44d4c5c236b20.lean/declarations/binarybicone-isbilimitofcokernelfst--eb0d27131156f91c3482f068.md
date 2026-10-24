# BinaryBicone.isBilimitOfCokernelFst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:131a3df46ecd8084c5f58e4c79d6e468a28d07890ce1ccf570cf392a8bc2d860",
  "kind": "def",
  "lexical_name": "BinaryBicone.isBilimitOfCokernelFst",
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
  "slug": "binarybicone-isbilimitofcokernelfst--eb0d27131156f91c3482f068",
  "source": {
    "blob": "c6b3d98779a650aac31b033d2178498e51fa9481",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 562,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant1577afc4812a2b313d41907554988d6570e557216cc2bfd541a44d4c5c236b20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb0d27131156f91c3482f0682b3f3352795cc8761a8cca361ed0e361a38aef30",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant1577afc4812a2b313d41907554988d6570e557216cc2bfd541a44d4c5c236b20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:131a3df46ecd8084c5f58e4c79d6e468a28d07890ce1ccf570cf392a8bc2d860`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 562–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BinaryBicone.isBilimitOfCokernelFst {X Y : C} (b : BinaryBicone X Y)
    (hb : IsColimit b.inrCokernelCofork) : b.IsBilimit :=
  isBinaryBilimitOfIsColimit _ <|
    BinaryCofan.IsColimit.mk _ (fun f g => b.fst ≫ f + b.snd ≫ g) (fun f g => by simp)
      (fun f g => by simp) fun {T} f g m h₁ h₂ => by
      dsimp at m
      have h₁' : b.inl ≫ (m - (b.fst ≫ f + b.snd ≫ g)) = 0 := by simpa using sub_eq_zero.2 h₁
      have h₂' : b.inr ≫ (m - (b.fst ≫ f + b.snd ≫ g)) = 0 := by simpa using sub_eq_zero.2 h₂
      obtain ⟨q : X ⟶ T, hq : b.fst ≫ q = m - (b.fst ≫ f + b.snd ≫ g)⟩ :=
        CokernelCofork.IsColimit.desc' hb _ h₂'
      rw [← sub_eq_zero, ← hq, ← Category.id_comp q, ← b.inl_fst, Category.assoc, hq, h₁',
        comp_zero]

/-- If `b` is a binary bicone such that `b.snd` is a cokernel of `b.inl`, then `b` is a bilimit
    bicone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant1577afc4812a2b313d41907554988d6570e557216cc2bfd541a44d4c5c236b20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant1577afc4812a2b313d41907554988d6570e557216cc2bfd541a44d4c5c236b20.lean#L562).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6b3d98779a650aac31b033d2178498e51fa9481` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
