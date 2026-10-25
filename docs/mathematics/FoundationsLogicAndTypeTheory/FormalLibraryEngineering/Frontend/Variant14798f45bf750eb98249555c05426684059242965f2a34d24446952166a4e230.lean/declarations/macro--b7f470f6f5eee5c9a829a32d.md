# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98a43535bd4b5a0a07fe32b43b5420565617da8754c5deec25242e712e5eda18",
  "kind": "macro",
  "lexical_name": null,
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
  "slug": "macro--b7f470f6f5eee5c9a829a32d",
  "source": {
    "blob": "d6b6e911dae4bd2d26c487f79c54ddfac25f0528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 367,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7f470f6f5eee5c9a829a32d5d5e4c9926f579b3eca7b9c384ba3af1581ce7d5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98a43535bd4b5a0a07fe32b43b5420565617da8754c5deec25242e712e5eda18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inherit_doc linarith] macro "linarith!" rest:linarithArgsRest : tactic =>
  `(tactic| linarith ! $rest:linarithArgsRest)

/--
An extension of `linarith` with some preprocessing to allow it to solve some nonlinear arithmetic
problems. (Based on Coq's `nra` tactic.) See `linarith` for the available syntax of options,
which are inherited by `nlinarith`; that is, `nlinarith!` and `nlinarith only [h1, h2]` all work as
in `linarith`. The preprocessing is as follows:

* For every subterm `a ^ 2` or `a * a` in a hypothesis or the goal,
  the assumption `0 ≤ a ^ 2` or `0 ≤ a * a` is added to the context.
* For every pair of hypotheses `a1 R1 b1`, `a2 R2 b2` in the context, `R1, R2 ∈ {<, ≤, =}`,
  the assumption `0 R' (b1 - a1) * (b2 - a2)` is added to the context (non-recursively),
  where `R ∈ {<, ≤, =}` is the appropriate comparison derived from `R1, R2`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6b6e911dae4bd2d26c487f79c54ddfac25f0528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
