# canEpsilon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00be2fcecb62a497d054b73a0ded65b6a1c5257d3fb6ab7a0b1dd93749acb9a7",
  "kind": "def",
  "lexical_name": "canEpsilon",
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
  "slug": "canepsilon--2a86ec37f803673b334faa46",
  "source": {
    "blob": "ca121df42dda4c2ed9783ff20f3537cec9bd330c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Keywords/Variant2c59effc28831d073744bc4a35a95bf82a3fbacf319771cfabc2cbebaca130a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a86ec37f803673b334faa468935777b0068915e5b0e5b1533d01318042fafa5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Keywords/Variant2c59effc28831d073744bc4a35a95bf82a3fbacf319771cfabc2cbebaca130a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00be2fcecb62a497d054b73a0ded65b6a1c5257d3fb6ab7a0b1dd93749acb9a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def canEpsilon (e : Expr) : MetaM Bool := do
  let rec attempt (p : Expr) (tryWhnf : Bool) : MetaM Bool := do
    match p.getAppFnArgs with
    | (``ParserDescr.node, #[_, _, p]) => canEpsilon p
    | (``ParserDescr.trailingNode, #[_, _, _, p]) => canEpsilon p
    | (``ParserDescr.unary, #[.app _ (.lit (.strVal _)), p]) => canEpsilon p
    | (``ParserDescr.nonReservedSymbol, #[.lit (.strVal _tk), _])
    | (``ParserDescr.symbol, #[_])
    | (``Parser.symbol, #[_])
    | (``Parser.nonReservedSymbol, #[_, _]) =>
      pure false
    | (``Parser.withAntiquot, #[_, p]) => canEpsilon p
    | (``Parser.leadingNode, #[_, _, p]) => canEpsilon p
    | (``HAndThen.hAndThen, #[_, _, _, _, p1, p2])
    | (``ParserDescr.binary, #[(.app _ (.lit (.strVal "andthen"))), p1, p2]) =>
      canEpsilon p1 <&&> canEpsilon p2
    | (``Parser.withCache, #[_, p]) => canEpsilon p
    | _ =>
      if tryWhnf then attempt (← Meta.whnf p) false
      else pure false -- Conservative approximation
  attempt e true

/--
Checks whether a syntax descriptor's value begins with the given atom. If so, the residual value
after the atom is returned.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Keywords/Variant2c59effc28831d073744bc4a35a95bf82a3fbacf319771cfabc2cbebaca130a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Keywords/Variant2c59effc28831d073744bc4a35a95bf82a3fbacf319771cfabc2cbebaca130a4.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca121df42dda4c2ed9783ff20f3537cec9bd330c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
