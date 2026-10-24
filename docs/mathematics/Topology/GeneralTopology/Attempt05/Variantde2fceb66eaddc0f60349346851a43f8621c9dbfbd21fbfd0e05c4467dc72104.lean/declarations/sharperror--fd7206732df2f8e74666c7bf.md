# sharpError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59aadfeaf0032abaec8f9bcecb126622d2019d380ca2f1b56c97748ae0283522",
  "kind": "def",
  "lexical_name": "sharpError",
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
  "slug": "sharperror--fd7206732df2f8e74666c7bf",
  "source": {
    "blob": "75cfc3aca17ccca6c4cb25e0b929bc78976883e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 107,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt05/Variantde2fceb66eaddc0f60349346851a43f8621c9dbfbd21fbfd0e05c4467dc72104.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd7206732df2f8e74666c7bf0f50ae587d97f30c7189de86457b3f8a3e28c601",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt05/Variantde2fceb66eaddc0f60349346851a43f8621c9dbfbd21fbfd0e05c4467dc72104.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59aadfeaf0032abaec8f9bcecb126622d2019d380ca2f1b56c97748ae0283522`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sharpError (A delta : ℝ) : ℝ :=
  errorPolynomial (A*delta)+Real.exp (-2*A*delta)*(1+errorPolynomial (A*delta))+544/A^2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt05/Variantde2fceb66eaddc0f60349346851a43f8621c9dbfbd21fbfd0e05c4467dc72104.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt05/Variantde2fceb66eaddc0f60349346851a43f8621c9dbfbd21fbfd0e05c4467dc72104.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75cfc3aca17ccca6c4cb25e0b929bc78976883e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
