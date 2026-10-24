# genWeightSpace_ne_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be33fa36-cdfe-21de-f8b6-60490ebee06a",
  "kind": "lemma",
  "lexical_name": "genWeightSpace_ne_bot",
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
  "slug": "genweightspace-ne-bot--f0f2e8dd3814337b1e6976a3",
  "source": {
    "blob": "1703d2ca8214442d1c2fe73bedb6ce6d37b03b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 232,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianted19e659e21581b9f433f108e96e4cb0bdc5f7a5afe3a06e13a73eee51a0a386.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0f2e8dd3814337b1e6976a3ae5036077d34afad387df18911301bab9322d354",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianted19e659e21581b9f433f108e96e4cb0bdc5f7a5afe3a06e13a73eee51a0a386.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be33fa36-cdfe-21de-f8b6-60490ebee06a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma genWeightSpace_ne_bot (χ : Weight R L M) : genWeightSpace M χ ≠ ⊥ := χ.genWeightSpace_ne_bot'

variable {M}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianted19e659e21581b9f433f108e96e4cb0bdc5f7a5afe3a06e13a73eee51a0a386.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianted19e659e21581b9f433f108e96e4cb0bdc5f7a5afe3a06e13a73eee51a0a386.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1703d2ca8214442d1c2fe73bedb6ce6d37b03b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
