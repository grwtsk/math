# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efeca09b710eed17644598487f5a6dc4e131f61f2e04451bdca78c56c070ec0f",
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
  "slug": "instance--e4ad613482f3c52be77e3d6c",
  "source": {
    "blob": "185db28b4b6b93e2764550d6717ad79ef090a771",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 329,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4ad613482f3c52be77e3d6c85a4023671cc7283789648dd43486bd0474524eb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efeca09b710eed17644598487f5a6dc4e131f61f2e04451bdca78c56c070ec0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (F : C ⥤ D) [F.Additive] (X : C) [Injective X] :
    IsIso (F.toRightDerivedZero.app X) := by
  rw [(InjectiveResolution.self X).toRightDerivedZero_eq F]
  infer_instance

section

variable (F : C ⥤ D) [F.Additive] [PreservesFiniteLimits F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `185db28b4b6b93e2764550d6717ad79ef090a771` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
