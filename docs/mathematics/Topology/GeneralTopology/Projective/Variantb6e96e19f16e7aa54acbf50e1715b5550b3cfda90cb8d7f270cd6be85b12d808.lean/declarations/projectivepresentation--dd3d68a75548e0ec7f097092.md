# projectivePresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4ae5b0219e09e7232649f1dcad49e95635d71508401e47b5bee7d802911bd46",
  "kind": "def",
  "lexical_name": "projectivePresentation",
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
  "slug": "projectivepresentation--dd3d68a75548e0ec7f097092",
  "source": {
    "blob": "e6e6119497c973802f9ee2a1fd3657df4394833b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 56,
    "path": "GRWTSK/Topology/GeneralTopology/Projective/Variantb6e96e19f16e7aa54acbf50e1715b5550b3cfda90cb8d7f270cd6be85b12d808.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd3d68a75548e0ec7f097092b1b962ed4431ccf181234532b4e9c5c820289d68",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Projective/Variantb6e96e19f16e7aa54acbf50e1715b5550b3cfda90cb8d7f270cd6be85b12d808.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4ae5b0219e09e7232649f1dcad49e95635d71508401e47b5bee7d802911bd46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def projectivePresentation (X : Profinite.{u}) : ProjectivePresentation X where
  p := of <| Ultrafilter X
  f := ⟨_, continuous_ultrafilter_extend id⟩
  projective := Profinite.projective_ultrafilter X
  epi := ConcreteCategory.epi_of_surjective _ fun x =>
    ⟨(pure x : Ultrafilter X), congr_fun (ultrafilter_extend_extends (𝟙 X)) x⟩
#align Profinite.projective_presentation Profinite.projectivePresentation

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Projective/Variantb6e96e19f16e7aa54acbf50e1715b5550b3cfda90cb8d7f270cd6be85b12d808.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Projective/Variantb6e96e19f16e7aa54acbf50e1715b5550b3cfda90cb8d7f270cd6be85b12d808.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6e6119497c973802f9ee2a1fd3657df4394833b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
