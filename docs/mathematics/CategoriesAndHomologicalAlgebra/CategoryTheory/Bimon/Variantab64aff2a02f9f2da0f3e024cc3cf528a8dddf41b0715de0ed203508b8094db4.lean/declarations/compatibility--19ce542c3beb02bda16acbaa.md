# compatibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fed7d6b-3153-8d79-f7cd-b190d468036c",
  "kind": "theorem",
  "lexical_name": "compatibility",
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
  "slug": "compatibility--19ce542c3beb02bda16acbaa",
  "source": {
    "blob": "4ccbff7643ed0e5046c06ea7abfe8dd44e699568",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimon/Variantab64aff2a02f9f2da0f3e024cc3cf528a8dddf41b0715de0ed203508b8094db4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19ce542c3beb02bda16acbaae1b09c88e4af21212f03ff85afc2e080cf710cd0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimon/Variantab64aff2a02f9f2da0f3e024cc3cf528a8dddf41b0715de0ed203508b8094db4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fed7d6b-3153-8d79-f7cd-b190d468036c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[reassoc (attr := simp)] theorem compatibility (M : Bimon_ C) :
    (M.comul.hom ⊗ M.comul.hom) ≫
      (α_ _ _ (M.X.X ⊗ M.X.X)).hom ≫ M.X.X ◁ (α_ _ _ _).inv ≫
      M.X.X ◁ (β_ M.X.X M.X.X).hom ▷ M.X.X ≫
      M.X.X ◁ (α_ _ _ _).hom ≫ (α_ _ _ _).inv ≫
      (M.X.mul ⊗ M.X.mul) =
    M.X.mul ≫ M.comul.hom := by
  have := (Mon_.Hom.mul_hom M.comul).symm
  simpa [-Mon_.Hom.mul_hom, tensorμ] using this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimon/Variantab64aff2a02f9f2da0f3e024cc3cf528a8dddf41b0715de0ed203508b8094db4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimon/Variantab64aff2a02f9f2da0f3e024cc3cf528a8dddf41b0715de0ed203508b8094db4.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ccbff7643ed0e5046c06ea7abfe8dd44e699568` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
