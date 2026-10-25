# ForwardState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46e0db90daf03057b3dc8baec84488cbf6b7f85df9e2ed0662e588508cd167e3",
  "kind": "structure",
  "lexical_name": "ForwardState",
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
  "slug": "forwardstate--4cc980958fdf3ddd8de6ed74",
  "source": {
    "blob": "e6543c2acdce0ca3e7212000bb808b0ec99cf510",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 782,
    "line": 766,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant3249143deab03d0d0806fc418669ad3547a7388c5c88a95763d5cec413ef7d64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cc980958fdf3ddd8de6ed745387a46d9fd63135b63b94df0b402e00a03cf785",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant3249143deab03d0d0806fc418669ad3547a7388c5c88a95763d5cec413ef7d64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46e0db90daf03057b3dc8baec84488cbf6b7f85df9e2ed0662e588508cd167e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 766–782.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ForwardState where
  /-- Map from each rule's name to its `RuleState`-/
  ruleStates : PHashMap RuleName RuleState
  /-- A map from hypotheses to the rules and premises that they matched against
  when they were initially added to the rule state. Invariant: the rule states
  in which a hypothesis `h` appear are exactly those identified by the rule
  names in `hyps[h]`. Furthermore, `h` only appears in slots with premise
  indices greater than or equal to those in `hyps[h]`. -/
  hyps : PHashMap FVarId (PArray (RuleName × PremiseIndex))
  /-- The pattern substitutions present in the rule states. Invariant:
  `patSubsts` maps the source `s` to a rule name `r` and pattern substitution `i`
  iff the rule state of `r` contains `i` with source `s`. -/
  patSubsts : PHashMap PatSubstSource (PArray (RuleName × Substitution))
 deriving Inhabited

namespace ForwardState

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant3249143deab03d0d0806fc418669ad3547a7388c5c88a95763d5cec413ef7d64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant3249143deab03d0d0806fc418669ad3547a7388c5c88a95763d5cec413ef7d64.lean#L766).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6543c2acdce0ca3e7212000bb808b0ec99cf510` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
