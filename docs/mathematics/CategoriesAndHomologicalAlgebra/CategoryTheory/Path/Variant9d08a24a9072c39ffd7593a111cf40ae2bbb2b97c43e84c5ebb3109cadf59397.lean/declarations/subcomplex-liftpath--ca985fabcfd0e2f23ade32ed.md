# Subcomplex.liftPath

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4d8cd52e41410830ee1540293615f4b2f681eeec4812054c132b08ce0ab0d10",
  "kind": "def",
  "lexical_name": "Subcomplex.liftPath",
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
  "slug": "subcomplex-liftpath--ca985fabcfd0e2f23ade32ed",
  "source": {
    "blob": "d8e8b20904c5e4deea466dabc475588aab593f49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 356,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant9d08a24a9072c39ffd7593a111cf40ae2bbb2b97c43e84c5ebb3109cadf59397.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca985fabcfd0e2f23ade32eddffeb6cbce3914bad5ac1fd7c9750bd9f7642ac6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant9d08a24a9072c39ffd7593a111cf40ae2bbb2b97c43e84c5ebb3109cadf59397.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4d8cd52e41410830ee1540293615f4b2f681eeec4812054c132b08ce0ab0d10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Subcomplex.liftPath {X : SSet.{u}} (A : X.Subcomplex) {n : ℕ} (p : Path X n)
    (hp₀ : ∀ j, p.vertex j ∈ A.obj _)
    (hp₁ : ∀ j, p.arrow j ∈ A.obj _) :
    Path A n where
  vertex j := ⟨p.vertex j, hp₀ _⟩
  arrow j := ⟨p.arrow j, hp₁ _⟩
  arrow_src j := Subtype.ext <| p.arrow_src j
  arrow_tgt j := Subtype.ext <| p.arrow_tgt j

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant9d08a24a9072c39ffd7593a111cf40ae2bbb2b97c43e84c5ebb3109cadf59397.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant9d08a24a9072c39ffd7593a111cf40ae2bbb2b97c43e84c5ebb3109cadf59397.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8e8b20904c5e4deea466dabc475588aab593f49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
