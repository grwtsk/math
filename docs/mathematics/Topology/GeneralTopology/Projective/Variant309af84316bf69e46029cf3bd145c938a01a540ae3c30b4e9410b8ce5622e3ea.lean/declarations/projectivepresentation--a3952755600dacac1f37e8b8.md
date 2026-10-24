# projectivePresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f0cbc506977646dddff99db8ab1a237600bbb2fa9be85ab25d2888f0e5120c2",
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
  "slug": "projectivepresentation--a3952755600dacac1f37e8b8",
  "source": {
    "blob": "8a612199c911bf0b7c3041fdd0c58bb0db8ff2b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 64,
    "path": "GRWTSK/Topology/GeneralTopology/Projective/Variant309af84316bf69e46029cf3bd145c938a01a540ae3c30b4e9410b8ce5622e3ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3952755600dacac1f37e8b882bf4912c37f0641f5bacbc5fce52774115a418d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Projective/Variant309af84316bf69e46029cf3bd145c938a01a540ae3c30b4e9410b8ce5622e3ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f0cbc506977646dddff99db8ab1a237600bbb2fa9be85ab25d2888f0e5120c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–71.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Projective/Variant309af84316bf69e46029cf3bd145c938a01a540ae3c30b4e9410b8ce5622e3ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Projective/Variant309af84316bf69e46029cf3bd145c938a01a540ae3c30b4e9410b8ce5622e3ea.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a612199c911bf0b7c3041fdd0c58bb0db8ff2b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
