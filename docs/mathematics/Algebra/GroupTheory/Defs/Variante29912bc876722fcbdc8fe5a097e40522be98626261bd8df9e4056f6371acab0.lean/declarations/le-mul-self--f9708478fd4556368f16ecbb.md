# le_mul_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6cde05c-ac93-904c-bfd1-73fd37873510",
  "kind": "theorem",
  "lexical_name": "le_mul_self",
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
  "slug": "le-mul-self--f9708478fd4556368f16ecbb",
  "source": {
    "blob": "3735ec21f83a3bd3847a0a99d5e77fc183a2bd45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 137,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9708478fd4556368f16ecbb3c28dbe0ee8cf6d46aeffff7d2bfe1b4ead9f2f4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6cde05c-ac93-904c-bfd1-73fd37873510`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_mul_self : a ≤ b * a := by
  rw [mul_comm]
  exact le_self_mul

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3735ec21f83a3bd3847a0a99d5e77fc183a2bd45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
