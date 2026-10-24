# NormalMono.ofArrowIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6f23118d8d5afd3af6a8f8cba2d90685fc2bc7f0b0f0c932c360079812bdb25",
  "kind": "def",
  "lexical_name": "NormalMono.ofArrowIso",
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
  "slug": "normalmono-ofarrowiso--5869f022bab58361406a5ba2",
  "source": {
    "blob": "e165d2f4966e9851b5b7cbfa584941968308e6f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 134,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5869f022bab58361406a5ba22d47cfa61bf2f45fb026f1340fe6cbfc09c53190",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6f23118d8d5afd3af6a8f8cba2d90685fc2bc7f0b0f0c932c360079812bdb25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def NormalMono.ofArrowIso {X Y : C} {f : X ⟶ Y}
    (hf : NormalMono f) {X' Y' : C} {f' : X' ⟶ Y'} (e : Arrow.mk f ≅ Arrow.mk f') :
    NormalMono f' where
  Z := hf.Z
  g := e.inv.right ≫ hf.g
  w := by
    have := Arrow.w e.inv
    dsimp at this
    rw [← reassoc_of% this, hf.w, comp_zero]
  isLimit := by
    refine (IsLimit.equivOfNatIsoOfIso ?_ _ _ ?_).1 hf.isLimit
    · exact parallelPair.ext (Arrow.rightFunc.mapIso e) (Iso.refl _)
    · exact Fork.ext (Arrow.leftFunc.mapIso e)

section

variable (C)

/-- A normal mono category is a category in which every monomorphism is normal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e165d2f4966e9851b5b7cbfa584941968308e6f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
