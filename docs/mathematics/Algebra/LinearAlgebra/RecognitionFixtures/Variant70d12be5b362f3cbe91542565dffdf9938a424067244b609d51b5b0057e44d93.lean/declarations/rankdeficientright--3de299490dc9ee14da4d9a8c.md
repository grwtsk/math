# rankDeficientRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:429a6976e1d6e06111524a4f68f9546e83e7c5eef47e355a4d5a7b47c6dd9f42",
  "kind": "def",
  "lexical_name": "rankDeficientRight",
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
  "slug": "rankdeficientright--3de299490dc9ee14da4d9a8c",
  "source": {
    "blob": "082afe71ee54aa7f849b1b3c5772b7f9b1888a53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 57,
    "path": "GRWTSK/Algebra/LinearAlgebra/RecognitionFixtures/Variant70d12be5b362f3cbe91542565dffdf9938a424067244b609d51b5b0057e44d93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3de299490dc9ee14da4d9a8c39a2222f5b08ad2f478f9e0c15569d82863c737c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RecognitionFixtures/Variant70d12be5b362f3cbe91542565dffdf9938a424067244b609d51b5b0057e44d93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:429a6976e1d6e06111524a4f68f9546e83e7c5eef47e355a4d5a7b47c6dd9f42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rankDeficientRight : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j => if i = 0 ∧ j = 1 then 1 else 0

/-- All maximal selected minors of the first degenerate frame vanish. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RecognitionFixtures/Variant70d12be5b362f3cbe91542565dffdf9938a424067244b609d51b5b0057e44d93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RecognitionFixtures/Variant70d12be5b362f3cbe91542565dffdf9938a424067244b609d51b5b0057e44d93.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `082afe71ee54aa7f849b1b3c5772b7f9b1888a53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
