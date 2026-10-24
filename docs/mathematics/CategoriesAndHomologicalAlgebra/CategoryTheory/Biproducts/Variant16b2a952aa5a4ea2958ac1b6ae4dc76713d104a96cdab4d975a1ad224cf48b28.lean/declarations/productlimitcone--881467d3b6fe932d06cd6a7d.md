# productLimitCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a97e885e8c021519a86680c0536657a710ce62f80244c1409d9b417ddad2bf7",
  "kind": "def",
  "lexical_name": "productLimitCone",
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
  "slug": "productlimitcone--881467d3b6fe932d06cd6a7d",
  "source": {
    "blob": "eb6fcbd933e072009721f008f621128efa50ba27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 111,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:881467d3b6fe932d06cd6a7df21f0d20618444ab2930ba14c00af935c7d95c8b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a97e885e8c021519a86680c0536657a710ce62f80244c1409d9b417ddad2bf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def productLimitCone : Limits.LimitCone (Discrete.functor f) where
  cone :=
    { pt := ModuleCat.of R (∀ j, f j)
      π := Discrete.natTrans fun j => ofHom (LinearMap.proj j.as : (∀ j, f j) →ₗ[R] f j.as) }
  isLimit :=
    { lift := lift.{_, v} f
      fac := fun _ _ => rfl
      uniq := fun s m w => by
        ext x j
        exact congr_arg (fun g : s.pt ⟶ f j => (g : s.pt → f j) x) (w ⟨j⟩) }

end HasLimit

open HasLimit

variable {J : Type} (f : J → ModuleCat.{v} R)

/-- We verify that the biproduct we've just defined is isomorphic to the `ModuleCat R` structure
on the dependent function type.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb6fcbd933e072009721f008f621128efa50ba27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
