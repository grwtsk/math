# getCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aabe3504f5906f898f3e67463625eaeaadc5cfbdec03ffb09dadadfc80628d91",
  "kind": "def",
  "lexical_name": "getCore",
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
  "slug": "getcore--4c654df0ec4a03cd2c127c00",
  "source": {
    "blob": "25b4b3c857a607af65f3a40e8a8d336e323e8e79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c654df0ec4a03cd2c127c0097ac569bddbeaaf63684d0956c19bfd418fadf0e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aabe3504f5906f898f3e67463625eaeaadc5cfbdec03ffb09dadadfc80628d91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getCore (e : Expr) (idx : RulePatternIndex) :
    BaseM (Array (RuleName × Substitution)) := do
  if idx.isEmpty then
    return #[]
  let e ← instantiateMVars e
  checkCache (β := RulePatternCache.Entry) e λ _ => do
    let (_, ms) ← e.forEach getSubexpr |>.run #[]
    return ms
where
  getSubexpr (e : Expr) :
      StateRefT (Array (RuleName × Substitution)) BaseM Unit := do
    if e.hasLooseBVars then
      -- We don't visit subexpressions with loose bvars. Substitutions
      -- derived from such subexpressions would not be valid in the goal's
      -- context. E.g. if a rule `(x : T) → P x` has pattern `x` and we
      -- have the expression `λ (y : T), y` in the goal, then it makes no
      -- sense to match `y` and generate `P y`.
      return
    let ms ← idx.getSingle e
    modifyThe (Array _) (· ++ ms)

@[inherit_doc getCore]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25b4b3c857a607af65f3a40e8a8d336e323e8e79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
