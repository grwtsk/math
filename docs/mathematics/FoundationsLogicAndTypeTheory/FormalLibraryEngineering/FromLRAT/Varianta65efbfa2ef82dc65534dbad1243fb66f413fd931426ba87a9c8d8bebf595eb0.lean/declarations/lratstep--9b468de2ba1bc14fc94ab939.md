# LRATStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:137e542e0706def01229fbadbdf26e4da2441575da705e6b2272063ef655e536",
  "kind": "inductive",
  "lexical_name": "LRATStep",
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
  "slug": "lratstep--9b468de2ba1bc14fc94ab939",
  "source": {
    "blob": "71d6163a2e0a517323bbc932440572f9fb13600e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 382,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Varianta65efbfa2ef82dc65534dbad1243fb66f413fd931426ba87a9c8d8bebf595eb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b468de2ba1bc14fc94ab93979878011b4d15249fae1031bbe27e2492876abf9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Varianta65efbfa2ef82dc65534dbad1243fb66f413fd931426ba87a9c8d8bebf595eb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:137e542e0706def01229fbadbdf26e4da2441575da705e6b2272063ef655e536`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive LRATStep
  | /-- An addition step, with the clause ID, the clause literal list, and the proof trace -/
    add (id : Nat) (lits : Array Int) (proof : Array Int) : LRATStep
  | /-- A (multiple) deletion step, which deletes all the listed clause IDs from the context -/
    del (ids : Array Nat) : LRATStep

/-- Build the main proof of `⊢ ctx.proof []` using the LRAT proof trace.

  * `arr`: The input CNF
  * `ctx`: The abbreviated formula, a constant like `foo.ctx_1`
  * `ctx'`: The definitional expansion of the formula, a tree of `Fmla.and` nodes
  * `steps`: The input LRAT proof trace
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Varianta65efbfa2ef82dc65534dbad1243fb66f413fd931426ba87a9c8d8bebf595eb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Varianta65efbfa2ef82dc65534dbad1243fb66f413fd931426ba87a9c8d8bebf595eb0.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71d6163a2e0a517323bbc932440572f9fb13600e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
