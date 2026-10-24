# isCoprodOfMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3f0978dc1b15e007c0996f22a9e079e815ebba693da1ecb1b3ec7c1e8d8e8cd",
  "kind": "def",
  "lexical_name": "isCoprodOfMono",
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
  "slug": "iscoprodofmono--cbe8bc22e88a226c3ff7ca75",
  "source": {
    "blob": "8ea3941e234eaa3cf1c67fb10e55976023ef5e76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 351,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant8066f181350cd6ae391c2cc2f9c8031c621573d27321d7165b8f29686c87ff65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cbe8bc22e88a226c3ff7ca75162a610bc939865bdb20dbba6356a939bb770124",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant8066f181350cd6ae391c2cc2f9c8031c621573d27321d7165b8f29686c87ff65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3f0978dc1b15e007c0996f22a9e079e815ebba693da1ecb1b3ec7c1e8d8e8cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isCoprodOfMono {X Y : Type u} (f : X ⟶ Y) [Mono f] :
    IsColimit (BinaryCofan.mk f (Subtype.val : ↑(Set.range f)ᶜ → Y)) := by
  apply Nonempty.some
  rw [binaryCofan_isColimit_iff]
  refine' ⟨(mono_iff_injective f).mp inferInstance, Subtype.val_injective, _⟩
  symm
  rw [← eq_compl_iff_isCompl]
  exact Subtype.range_val
#align category_theory.limits.types.is_coprod_of_mono CategoryTheory.Limits.Types.isCoprodOfMono

/--
The category of types has `Π j, f j` as the product of a type family `f : J → TypeMax.{v, u}`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant8066f181350cd6ae391c2cc2f9c8031c621573d27321d7165b8f29686c87ff65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant8066f181350cd6ae391c2cc2f9c8031c621573d27321d7165b8f29686c87ff65.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ea3941e234eaa3cf1c67fb10e55976023ef5e76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
