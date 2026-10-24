# functorPushforward

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a56c4ff50f2865bc6b8577cf532d5f4354c0169ca4d5066e8f7e7b41f63254b3",
  "kind": "def",
  "lexical_name": "functorPushforward",
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
  "slug": "functorpushforward--8a320f9b03d327ab53b6cb67",
  "source": {
    "blob": "eecfc2a35c189df1f5ed1efe6906dccd4353c2cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 223,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variant7875340dfb3fd1a2fb572f525474401cd17f098e80cdfadc2d6f956540e346db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a320f9b03d327ab53b6cb673bbd448b1b28091ce03680ab73055b06fa7c7d1c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variant7875340dfb3fd1a2fb572f525474401cd17f098e80cdfadc2d6f956540e346db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a56c4ff50f2865bc6b8577cf532d5f4354c0169ca4d5066e8f7e7b41f63254b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functorPushforward (S : Presieve X) : Presieve (F.obj X) := fun Y f =>
  ∃ (Z : C) (g : Z ⟶ X) (h : Y ⟶ F.obj Z), S g ∧ f = h ≫ F.map g

/-- An auxiliary definition in order to fix the choice of the preimages between various definitions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variant7875340dfb3fd1a2fb572f525474401cd17f098e80cdfadc2d6f956540e346db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variant7875340dfb3fd1a2fb572f525474401cd17f098e80cdfadc2d6f956540e346db.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eecfc2a35c189df1f5ed1efe6906dccd4353c2cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
