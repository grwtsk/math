# stream_isSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00c77a20-1ffd-f36b-ed48-a0dd4251914d",
  "kind": "theorem",
  "lexical_name": "stream_isSeq",
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
  "slug": "stream-isseq--5b52cbe2518159acef227b5b",
  "source": {
    "blob": "8c9c2314819a0828a0733ed95854bd595b5585d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 155,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b52cbe2518159acef227b5beaacfa1f70ca5cdcc62db64ab8b2a0ee021d384e",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00c77a20-1ffd-f36b-ed48-a0dd4251914d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stream_isSeq (v : K) : (IntFractPair.stream v).IsSeq := by
  intro _ hyp
  simp [IntFractPair.stream, hyp]

/--
Uses `IntFractPair.stream` to create a sequence with head (i.e. `seq1`) of integer and fractional
parts of a value `v`. The first value of `IntFractPair.stream` is never `none`, so we can safely
extract it and put the tail of the stream in the sequence part.

This is just an intermediate representation and users should not (need to) directly interact with
it. The setup of rewriting/simplification lemmas that make the definitions easy to use is done in
`Mathlib/Algebra/ContinuedFractions/Computation/Translations.lean`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c9c2314819a0828a0733ed95854bd595b5585d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
