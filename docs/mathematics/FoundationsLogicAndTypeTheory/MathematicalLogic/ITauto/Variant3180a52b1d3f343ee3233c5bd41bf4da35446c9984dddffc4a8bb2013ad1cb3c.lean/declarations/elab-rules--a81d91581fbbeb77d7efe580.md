# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34eccae60b48e13d72bb3a5683577e8660af1b6c05e22736186352b23bcf0efc",
  "kind": "elab_rules",
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
  "slug": "elab-rules--a81d91581fbbeb77d7efe580",
  "source": {
    "blob": "280c69c2cef616140db42a88d01bf0dfe0d92900",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 720,
    "line": 714,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a81d91581fbbeb77d7efe5802e56ca0d344bf9f3ec8ced5cef60c52413b6a702",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34eccae60b48e13d72bb3a5683577e8660af1b6c05e22736186352b23bcf0efc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 714–720.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
  | `(tactic| itauto $[!%$cl]?) => liftMetaTactic (itautoCore · false cl.isSome #[] *> pure [])
  | `(tactic| itauto $[!%$cl]? *) => liftMetaTactic (itautoCore · true cl.isSome #[] *> pure [])
  | `(tactic| itauto $[!%$cl]? [$hs,*]) => withMainContext do
    let hs ← hs.getElems.mapM (Term.elabTermAndSynthesize · none)
    liftMetaTactic (itautoCore · true cl.isSome hs *> pure [])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean#L714).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `280c69c2cef616140db42a88d01bf0dfe0d92900` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
