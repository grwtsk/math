# restriction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b7bc492f79da3f08fb2cc6e92168dd3b53ea59a60800422dcc0b0ecb5e6b2c4",
  "kind": "def",
  "lexical_name": "restriction",
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
  "slug": "restriction--f8f363ab79aba1519d85924a",
  "source": {
    "blob": "a0ba680171320cfe9063d1bd177bae87cd7b441e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 97,
    "path": "GRWTSK/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8f363ab79aba1519d85924abfa31759fff6579f4095d3e8ac4dbba15c36b311",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b7bc492f79da3f08fb2cc6e92168dd3b53ea59a60800422dcc0b0ecb5e6b2c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restriction : FullH →L[ℂ] H := LpToLpRestrictCLM ℝ ℂ ℂ volume 2 (Ioi 0)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0ba680171320cfe9063d1bd177bae87cd7b441e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
