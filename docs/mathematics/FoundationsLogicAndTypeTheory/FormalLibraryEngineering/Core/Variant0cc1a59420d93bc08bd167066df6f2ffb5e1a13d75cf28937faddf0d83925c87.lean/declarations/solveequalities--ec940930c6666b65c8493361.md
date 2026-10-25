# solveEqualities

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c7c1a862d4c837d20afec6d3c3de07ef7d7e6d1afe272d01072be6c288fb140",
  "kind": "def",
  "lexical_name": "solveEqualities",
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
  "slug": "solveequalities--ec940930c6666b65c8493361",
  "source": {
    "blob": "68b9bfd0ef782c0ca264d6921b139f63ead97eeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 369,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant0cc1a59420d93bc08bd167066df6f2ffb5e1a13d75cf28937faddf0d83925c87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec940930c6666b65c849336179f3cb0655dc1fda07e3e029b62c9704ad87becd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant0cc1a59420d93bc08bd167066df6f2ffb5e1a13d75cf28937faddf0d83925c87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c7c1a862d4c837d20afec6d3c3de07ef7d7e6d1afe272d01072be6c288fb140`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def solveEqualities (p : Problem) : OmegaM Problem :=
  if p.possible then
    match p.selectEquality with
    | some (c, m) => do (← p.solveEquality c m).solveEqualities
    | none => return p
  else return p

open Constraint

open Lean in
/-- Constructing the proof term for `addInequality`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant0cc1a59420d93bc08bd167066df6f2ffb5e1a13d75cf28937faddf0d83925c87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant0cc1a59420d93bc08bd167066df6f2ffb5e1a13d75cf28937faddf0d83925c87.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68b9bfd0ef782c0ca264d6921b139f63ead97eeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
