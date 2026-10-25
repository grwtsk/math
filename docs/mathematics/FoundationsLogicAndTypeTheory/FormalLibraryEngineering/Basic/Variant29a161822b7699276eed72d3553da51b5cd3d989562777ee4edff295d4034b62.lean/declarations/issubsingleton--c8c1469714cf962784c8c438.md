# isSubsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca0744ee78df4e1d329830c58c2d2158a4ed6a3b2d9694f9ae9c0f341c82e8a8",
  "kind": "def",
  "lexical_name": "isSubsingleton",
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
  "slug": "issubsingleton--c8c1469714cf962784c8c438",
  "source": {
    "blob": "2c203b5c6891867487729c1852f5847977b56231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 253,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8c1469714cf962784c8c4382adddf09684a5c3ac51cafd4185cf9e0f1109130",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca0744ee78df4e1d329830c58c2d2158a4ed6a3b2d9694f9ae9c0f341c82e8a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isSubsingleton (g : MVarId) : MetaM Bool := do
  try
    discard <| synthInstance (← mkAppM ``Subsingleton #[← g.getType])
    return true
  catch _ =>
    return false

/--
Check if a goal is "independent" of a list of other goals.
We say a goal is independent of other goals if assigning a value to it
can not change the assignability of the other goals.

Examples:
* `?m_1 : Type` is not independent of `?m_2 : ?m_1`,
  because we could assign `true : Bool` to `?m_2`,
  but if we first assign `Nat` to `?m_1` then that is no longer possible.
* `?m_1 : Nat` is not independent of `?m_2 : Fin ?m_1`,
  because we could assign `37 : Fin 42` to `?m_2`,
  but if we first assign `2` to `?m_1` then that is no longer possible.
* `?m_1 : ?m_2` is not independent of `?m_2 : Type`, because we could assign `Bool` to ?m_2`,
  but if we first assign `0 : Nat` to `?m_1` then that is no longer possible.
* Given `P : Prop` and `f : P → Type`, `?m_1 : P` is independent of `?m_2 : f ?m_1`
  by proof irrelevance.
* Similarly given `f : Fin 0 → Type`, `?m_1 : Fin 0` is independent of `?m_2 : f ?m_1`,
  because `Fin 0` is a subsingleton.
* Finally `?m_1 : Nat` is independent of `?m_2 : α`,
  as long as `?m_1` does not appear in `Meta.getMVars α`
  (note that `Meta.getMVars` follows delayed assignments).

This function only calculates a conservative approximation of this condition.
That is, it may return `false` when it should return `true`.
(In particular it returns false whenever the type of `g` contains a metavariable,
regardless of whether this is related to the metavariables in `L`.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c203b5c6891867487729c1852f5847977b56231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
