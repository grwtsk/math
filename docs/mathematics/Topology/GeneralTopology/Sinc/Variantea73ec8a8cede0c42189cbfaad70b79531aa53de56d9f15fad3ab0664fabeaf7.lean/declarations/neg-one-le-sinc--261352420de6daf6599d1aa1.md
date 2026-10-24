# neg_one_le_sinc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7db3ab81-cc94-deea-6db3-37c83e2882a4",
  "kind": "lemma",
  "lexical_name": "neg_one_le_sinc",
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
  "slug": "neg-one-le-sinc--261352420de6daf6599d1aa1",
  "source": {
    "blob": "f0e652cea5885c37fc9540a8bc278dcf7162ca9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 71,
    "path": "GRWTSK/Topology/GeneralTopology/Sinc/Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:261352420de6daf6599d1aa1b6c6b93eedcbd584cbf3252e3be990368df38dec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sinc/Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7db3ab81-cc94-deea-6db3-37c83e2882a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma neg_one_le_sinc (x : ℝ) : -1 ≤ sinc x := (abs_le.mp (abs_sinc_le_one x)).1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sinc/Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sinc/Variantea73ec8a8cede0c42189cbfaad70b79531aa53de56d9f15fad3ab0664fabeaf7.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0e652cea5885c37fc9540a8bc278dcf7162ca9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
