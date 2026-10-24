# semilatticeSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4b648941aba8a7f903b20550f77af16ddb12bedd141a92b661ae8563e2de265",
  "kind": "instance",
  "lexical_name": "semilatticeSup",
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
  "slug": "semilatticesup--aaeff6aa39ca5edc7f09daac",
  "source": {
    "blob": "3e15f01b61d6220d084d86b748c86d7136df76a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 469,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variant13840a3b364d5f852d8240cdcab3b57d5a02d8474fd7cd9d16255773623ffc7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aaeff6aa39ca5edc7f09daaccf79bce7c021abe648580d14d7baf9b2859a7251",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variant13840a3b364d5f852d8240cdcab3b57d5a02d8474fd7cd9d16255773623ffc7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4b648941aba8a7f903b20550f77af16ddb12bedd141a92b661ae8563e2de265`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance semilatticeSup {B : C} : SemilatticeSup (Subobject B) where
  sup := fun m n => (sup.obj m).obj n
  le_sup_left := fun m n => Quotient.inductionOn₂' m n fun _ _ => ⟨MonoOver.leSupLeft _ _⟩
  le_sup_right := fun m n => Quotient.inductionOn₂' m n fun _ _ => ⟨MonoOver.leSupRight _ _⟩
  sup_le := fun m n k =>
    Quotient.inductionOn₃' m n k fun _ _ _ ⟨i⟩ ⟨j⟩ => ⟨MonoOver.supLe _ _ _ i j⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variant13840a3b364d5f852d8240cdcab3b57d5a02d8474fd7cd9d16255773623ffc7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variant13840a3b364d5f852d8240cdcab3b57d5a02d8474fd7cd9d16255773623ffc7a.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e15f01b61d6220d084d86b748c86d7136df76a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
