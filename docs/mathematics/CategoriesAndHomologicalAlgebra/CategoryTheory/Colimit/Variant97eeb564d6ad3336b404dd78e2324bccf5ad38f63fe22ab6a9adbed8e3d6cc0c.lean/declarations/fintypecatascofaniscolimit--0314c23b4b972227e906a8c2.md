# fintypeCatAsCofanIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a0ffb3ca9d33b0e2978dfae2aa4b2900cc9a1da58d876f100077bca964eb6a4",
  "kind": "def",
  "lexical_name": "fintypeCatAsCofanIsColimit",
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
  "slug": "fintypecatascofaniscolimit--0314c23b4b972227e906a8c2",
  "source": {
    "blob": "844ffd497cf6c389ba7cea5cc8a1059dd49aee1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 511,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant97eeb564d6ad3336b404dd78e2324bccf5ad38f63fe22ab6a9adbed8e3d6cc0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0314c23b4b972227e906a8c2af20d48f97ad8a8daffdc42b7b2021ff85e6f1a9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant97eeb564d6ad3336b404dd78e2324bccf5ad38f63fe22ab6a9adbed8e3d6cc0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a0ffb3ca9d33b0e2978dfae2aa4b2900cc9a1da58d876f100077bca964eb6a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fintypeCatAsCofanIsColimit (X : LightProfinite) [Finite X] :
    IsColimit (fintypeCatAsCofan X) :=
  Cofan.IsColimit.mk _ (fun t ↦ ConcreteCategory.ofHom ⟨fun x ↦ t.inj x PUnit.unit,
    continuous_of_discreteTopology (α := X)⟩) (by aesop)
    (fun _ _ h ↦ by ext x; exact CategoryTheory.congr_fun (h x) _)

variable [PreservesFiniteProducts F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant97eeb564d6ad3336b404dd78e2324bccf5ad38f63fe22ab6a9adbed8e3d6cc0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant97eeb564d6ad3336b404dd78e2324bccf5ad38f63fe22ab6a9adbed8e3d6cc0c.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `844ffd497cf6c389ba7cea5cc8a1059dd49aee1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
