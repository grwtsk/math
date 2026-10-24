# negPart_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dda1e0ac-9c60-9433-dcc4-2fd79691ab0e",
  "kind": "lemma",
  "lexical_name": "negPart_algebraMap",
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
  "slug": "negpart-algebramap--286a5a4e6ba70210090cceed",
  "source": {
    "blob": "047f4ad1c16f004915374f7d1954067dfe07a247",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 343,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:286a5a4e6ba70210090cceed40d08d391203b39a7b352bfe99d987c6579d6dfb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dda1e0ac-9c60-9433-dcc4-2fd79691ab0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma negPart_algebraMap (r : ℝ) : (algebraMap ℝ A r)⁻ = algebraMap ℝ A r⁻ := by
  rw [CFC.negPart_def, cfcₙ_eq_cfc]
  simp

open NNReal in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `047f4ad1c16f004915374f7d1954067dfe07a247` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
