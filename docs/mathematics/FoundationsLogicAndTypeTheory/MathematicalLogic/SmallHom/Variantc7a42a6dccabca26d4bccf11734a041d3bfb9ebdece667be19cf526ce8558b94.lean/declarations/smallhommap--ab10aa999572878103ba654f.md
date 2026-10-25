# smallHomMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8820e13c28f6b93d1fab4a9de8b97d4e55bc95f725aef204a7a9c9ef33f6a473",
  "kind": "def",
  "lexical_name": "smallHomMap",
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
  "slug": "smallhommap--ab10aa999572878103ba654f",
  "source": {
    "blob": "334149a38ba679cddfab2abb7f190d0d26ff51d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 244,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab10aa999572878103ba654f2e8583fa71be7c510020d7349eeb05cfafdd8643",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8820e13c28f6b93d1fab4a9de8b97d4e55bc95f725aef204a7a9c9ef33f6a473`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def smallHomMap (f : SmallHom.{w} W₁ X Y) :
    SmallHom.{w'} W₂ (Φ.functor.obj X) (Φ.functor.obj Y) :=
  (SmallHom.equiv W₂ W₂.Q).symm
    (Iso.homCongr ((CatCommSq.iso Φ.functor W₁.Q W₂.Q _).symm.app _)
      ((CatCommSq.iso Φ.functor W₁.Q W₂.Q _).symm.app _)
      ((Φ.localizedFunctor W₁.Q W₂.Q).map ((SmallHom.equiv W₁ W₁.Q) f)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `334149a38ba679cddfab2abb7f190d0d26ff51d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
