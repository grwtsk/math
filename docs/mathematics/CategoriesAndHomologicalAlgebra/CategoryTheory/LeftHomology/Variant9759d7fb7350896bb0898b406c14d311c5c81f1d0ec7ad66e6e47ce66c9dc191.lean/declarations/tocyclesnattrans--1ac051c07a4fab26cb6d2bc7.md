# toCyclesNatTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98e5e8457ab7506a979fca3c86c812a8611dac0d49944ad27316988f09dcca4d",
  "kind": "def",
  "lexical_name": "toCyclesNatTrans",
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
  "slug": "tocyclesnattrans--1ac051c07a4fab26cb6d2bc7",
  "source": {
    "blob": "69189da39baaaa8165d5b3f3b6330f2b7251f6cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 811,
    "line": 799,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant9759d7fb7350896bb0898b406c14d311c5c81f1d0ec7ad66e6e47ce66c9dc191.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ac051c07a4fab26cb6d2bc7d63688a8a827be54520124145227b1f99420201c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant9759d7fb7350896bb0898b406c14d311c5c81f1d0ec7ad66e6e47ce66c9dc191.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98e5e8457ab7506a979fca3c86c812a8611dac0d49944ad27316988f09dcca4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 799–811.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toCyclesNatTrans :
    π₁ ⟶ cyclesFunctor C where
  app S := S.toCycles
  naturality := fun _ _ φ => (toCycles_naturality φ).symm

end

namespace LeftHomologyData

/-- If `φ : S₁ ⟶ S₂` is a morphism of short complexes such that `φ.τ₁` is epi, `φ.τ₂` is an iso
and `φ.τ₃` is mono, then a left homology data for `S₁` induces a left homology data for `S₂` with
the same `K` and `H` fields. The inverse construction is `ofEpiOfIsIsoOfMono'`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant9759d7fb7350896bb0898b406c14d311c5c81f1d0ec7ad66e6e47ce66c9dc191.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant9759d7fb7350896bb0898b406c14d311c5c81f1d0ec7ad66e6e47ce66c9dc191.lean#L799).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69189da39baaaa8165d5b3f3b6330f2b7251f6cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
