# getDiseqFor?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26bafc8c740eb4bc5892a5d675f47ef8ed5539ee30614aa7f88524ba6fc3d1b7",
  "kind": "def",
  "lexical_name": "getDiseqFor?",
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
  "slug": "getdiseqfor--52d9f1182a84d75face3aa3c",
  "source": {
    "blob": "51782b86e6dca938883302bc8cfac8e795e3e12e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diseq/Variante9ee5ae89bc2f2016dc6b9c93e09e6dcbc345a0b80a997aa72c04530408b2bdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52d9f1182a84d75face3aa3cf9104de0bb094477935cb065dad73b787f11106d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diseq/Variante9ee5ae89bc2f2016dc6b9c93e09e6dcbc345a0b80a997aa72c04530408b2bdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26bafc8c740eb4bc5892a5d675f47ef8ed5539ee30614aa7f88524ba6fc3d1b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getDiseqFor? (a b : Expr) : GoalM (Option Expr) := do
  let key := mkApp2 dummyEq a b
  let some { e := e' } := (← get).congrTable.find? { e := key } | return none
  if (← isEqFalse e') then
    return some e'
  else
    return none

/--
Returns `true` if `a` and `b` are known to be disequal.
See `getDiseqFor?`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diseq/Variante9ee5ae89bc2f2016dc6b9c93e09e6dcbc345a0b80a997aa72c04530408b2bdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diseq/Variante9ee5ae89bc2f2016dc6b9c93e09e6dcbc345a0b80a997aa72c04530408b2bdc.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51782b86e6dca938883302bc8cfac8e795e3e12e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
