# simpMatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80e8a84652f9f02243872c1fb0d7450256fc91d90433b252a3275471efd78f78",
  "kind": "def",
  "lexical_name": "simpMatch",
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
  "slug": "simpmatch--9d7c252a3918a4a623aeb91d",
  "source": {
    "blob": "dfdbe4b527ce45213f6a7598001588a21629cade",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlFlow/Variant3144ea45a857bed5386a5488bf4bc51c970f3eb34e46d33cf861f191263e70de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d7c252a3918a4a623aeb91d53900d0823a4a115d232b515f52102ee58908810",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlFlow/Variant3144ea45a857bed5386a5488bf4bc51c970f3eb34e46d33cf861f191263e70de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80e8a84652f9f02243872c1fb0d7450256fc91d90433b252a3275471efd78f78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def simpMatch (declName : Name) : Simproc := fun e => do
  if let some e' ← reduceRecMatcher? e then
    -- Iota-reduction may expose kernel `Expr.proj` terms via struct-eta,
    -- which the structural simplifier cannot consume directly.
    let e'' ← Sym.foldProjs e'
    let e'' ← share e''
    return .step e'' (← mkEqRefl e'')
  let some info ← getMatcherInfo? declName
    | return .rfl
  -- **Note**: Simplify only the discriminants
  let start := info.numParams + 1
  let stop  := start + info.numDiscrs
  let r ← simpAppArgRange e start stop
  match r with
  | .step .. => return r
  | .rfl _ cd => return mkRflResult (done := true) (contextDependent := cd)

/--
Simplifies control-flow expressions such as `if-then-else` and `match` expressions.
It visits only the conditions and discriminants.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlFlow/Variant3144ea45a857bed5386a5488bf4bc51c970f3eb34e46d33cf861f191263e70de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlFlow/Variant3144ea45a857bed5386a5488bf4bc51c970f3eb34e46d33cf861f191263e70de.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfdbe4b527ce45213f6a7598001588a21629cade` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
