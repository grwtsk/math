# shiftZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a44ed1b8bf9eb00d3da3324a95e532744ca7727400d8b443cd5ff7d180ac174d",
  "kind": "def",
  "lexical_name": "shiftZero",
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
  "slug": "shiftzero--debb343ae8d62d4581f06c3e",
  "source": {
    "blob": "a211d4f74bcd4faaa69d1e24605bc2adb730d252",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 302,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant64ea2d489af36fa2f1f2f7eaf1faacc823f88c5f9d5f2d4df1b162a44adfdd28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:debb343ae8d62d4581f06c3eb7912d4960fea81835978d476a6a07bf9ec01ec7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant64ea2d489af36fa2f1f2f7eaf1faacc823f88c5f9d5f2d4df1b162a44adfdd28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a44ed1b8bf9eb00d3da3324a95e532744ca7727400d8b443cd5ff7d180ac174d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shiftZero : shiftFunctor C (0 : S) ≅ 𝟭 (DifferentialObject S C) := by
  refine NatIso.ofComponents (fun X => mkIso ((shiftFunctorZero C S).app X.obj) ?_) (fun f => ?_)
  · erw [← NatTrans.naturality]
    dsimp
    simp only [shiftFunctorZero_hom_app_shift, Category.assoc]
  · aesop_cat

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant64ea2d489af36fa2f1f2f7eaf1faacc823f88c5f9d5f2d4df1b162a44adfdd28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant64ea2d489af36fa2f1f2f7eaf1faacc823f88c5f9d5f2d4df1b162a44adfdd28.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a211d4f74bcd4faaa69d1e24605bc2adb730d252` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
