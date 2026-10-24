# homMk_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8820a56b-cfc5-1c67-c66e-479e5f23b5ec",
  "kind": "lemma",
  "lexical_name": "homMk_comp",
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
  "slug": "hommk-comp--e55885dba5e48d624e09e840",
  "source": {
    "blob": "ba144c954cae772a78f9e0b8e5c860d5e3f31b98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e55885dba5e48d624e09e84041658a16086c02959918f7aa41871c854a3ddcdb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8820a56b-cfc5-1c67-c66e-479e5f23b5ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma homMk_comp {a b c : 𝒳} (φ : a ⟶ b) (ψ : b ⟶ c) [IsHomLift p (𝟙 S) φ]
    [IsHomLift p (𝟙 S) ψ] : homMk p S φ ≫ homMk p S ψ = homMk p S (φ ≫ ψ) :=
  rfl

section

variable {p : 𝒳 ⥤ 𝒮} {S : 𝒮} {C : Type u₃} [Category.{v₃} C] {F : C ⥤ 𝒳}
  (hF : F ⋙ p = (const C).obj S)

/-- Given a functor `F : C ⥤ 𝒳` such that `F ⋙ p` is constant at some `S : 𝒮`, then
we get an induced functor `C ⥤ Fiber p S` that `F` factors through. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba144c954cae772a78f9e0b8e5c860d5e3f31b98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
