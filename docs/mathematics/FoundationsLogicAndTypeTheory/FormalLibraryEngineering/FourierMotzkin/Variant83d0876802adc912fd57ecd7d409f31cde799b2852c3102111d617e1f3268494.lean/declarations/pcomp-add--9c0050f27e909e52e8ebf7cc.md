# PComp.add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97bc3d333f2aa86595420a825cdbf1cd715efd51492ece451aa7144213b998e7",
  "kind": "def",
  "lexical_name": "PComp.add",
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
  "slug": "pcomp-add--9c0050f27e909e52e8ebf7cc",
  "source": {
    "blob": "765b016e70af47b288cd6b8458adda41e442cde6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 182,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant83d0876802adc912fd57ecd7d409f31cde799b2852c3102111d617e1f3268494.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c0050f27e909e52e8ebf7ccc0c5a73286f2af098727bee2611b2ffb7fcf8334",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant83d0876802adc912fd57ecd7d409f31cde799b2852c3102111d617e1f3268494.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97bc3d333f2aa86595420a825cdbf1cd715efd51492ece451aa7144213b998e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PComp.add (c1 c2 : PComp) (elimVar : ℕ) : PComp :=
  let c := c1.c.add c2.c
  let src := c1.src.add c2.src
  let history := c1.history.union c2.history
  let vars := c1.vars.union c2.vars
  let effective := (c1.effective.union c2.effective).insert elimVar
  let implicit := (vars.diff (.ofList c.vars _)).diff effective
  ⟨c, src, history, effective, implicit, vars⟩

/--
`PComp.assump c n` creates a `PComp` whose comparison is `c` and whose source is
`CompSource.assump n`, that is, `c` is derived from the `n`th hypothesis.
The history is the singleton set `{n}`.
No variables have been eliminated (effectively or implicitly).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant83d0876802adc912fd57ecd7d409f31cde799b2852c3102111d617e1f3268494.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant83d0876802adc912fd57ecd7d409f31cde799b2852c3102111d617e1f3268494.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `765b016e70af47b288cd6b8458adda41e442cde6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
