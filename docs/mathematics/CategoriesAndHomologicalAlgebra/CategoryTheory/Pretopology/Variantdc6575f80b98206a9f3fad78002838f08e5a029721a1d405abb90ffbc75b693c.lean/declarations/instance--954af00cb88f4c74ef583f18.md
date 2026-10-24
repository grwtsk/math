# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd7041d939c7d39cb70f03d80fc007b6c8f76b478f7c51174b686bf994d3f381",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--954af00cb88f4c74ef583f18",
  "source": {
    "blob": "924071d8834ed85cdb5c7d0fa69aa864a5f3f783",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 232,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantdc6575f80b98206a9f3fad78002838f08e5a029721a1d405abb90ffbc75b693c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:954af00cb88f4c74ef583f1898c82823ba52ae867ca5db91d0f9a3235904e639",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantdc6575f80b98206a9f3fad78002838f08e5a029721a1d405abb90ffbc75b693c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd7041d939c7d39cb70f03d80fc007b6c8f76b478f7c51174b686bf994d3f381`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : InfSet (Pretopology C) where
  sInf T := {
    coverings := sInf ((fun J ↦ J.coverings) '' T)
    has_isos := fun X Y f _ ↦ by
      simp only [sInf_apply, Set.iInf_eq_iInter, Set.iInter_coe_set, Set.mem_image,
        Set.iInter_exists,
        Set.biInter_and', Set.iInter_iInter_eq_right, Set.mem_iInter]
      intro t _
      exact t.has_isos f
    pullbacks := fun X Y f S hS ↦ by
      simp only [sInf_apply, Set.iInf_eq_iInter, Set.iInter_coe_set, Set.mem_image,
        Set.iInter_exists, Set.biInter_and', Set.iInter_iInter_eq_right, Set.mem_iInter] at hS ⊢
      intro t ht
      exact t.pullbacks f S (hS t ht)
    transitive := fun X S Ti hS hTi ↦ by
      simp only [sInf_apply, Set.iInf_eq_iInter, Set.iInter_coe_set, Set.mem_image,
        Set.iInter_exists, Set.biInter_and', Set.iInter_iInter_eq_right, Set.mem_iInter] at hS hTi ⊢
      intro t ht
      exact t.transitive S Ti (hS t ht) (fun Y f H ↦ hTi f H t ht)
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantdc6575f80b98206a9f3fad78002838f08e5a029721a1d405abb90ffbc75b693c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantdc6575f80b98206a9f3fad78002838f08e5a029721a1d405abb90ffbc75b693c.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `924071d8834ed85cdb5c7d0fa69aa864a5f3f783` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
