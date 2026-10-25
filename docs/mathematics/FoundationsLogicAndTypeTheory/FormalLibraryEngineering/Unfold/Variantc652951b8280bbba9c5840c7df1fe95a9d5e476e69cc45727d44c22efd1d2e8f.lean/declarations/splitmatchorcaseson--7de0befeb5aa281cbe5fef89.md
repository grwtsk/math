# splitMatchOrCasesOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3c29f2f11a723b64ba6be3beb840373e35e8cd8f48de6c385317553e9d8d263",
  "kind": "def",
  "lexical_name": "splitMatchOrCasesOn",
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
  "slug": "splitmatchorcaseson--7de0befeb5aa281cbe5fef89",
  "source": {
    "blob": "849a457353df87c49693cff34437d1c9ba571f06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7de0befeb5aa281cbe5fef891157f9eb38f4018dfc990cbdf816866ae2c22dfa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3c29f2f11a723b64ba6be3beb840373e35e8cd8f48de6c385317553e9d8d263`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def splitMatchOrCasesOn (mvarId : MVarId) (e : Expr) (matcherInfo : MatcherInfo) : MetaM (List MVarId) := do
  if (← isMatcherApp e) then
    Split.splitMatch mvarId e
  else
    -- For casesOn, the last discriminant is the major premise;
    -- `cases` will handle any index discriminants automatically.
    let discr := e.getAppArgs[matcherInfo.numParams + matcherInfo.numDiscrs]!
    assert! discr.isFVar
    let subgoals ← mvarId.cases discr.fvarId!
    return subgoals.map (·.mvarId) |>.toList

/--
Generates a theorem of the form
```
matcherArgPusher params motive {α} {β} (f : ∀ (x : α), β x) rel alt1 .. x1 x2
  :
  matcher params (motive := fun x1 x2 => ((y : α) → rel x1 x2 y → β y) → motive x1 x2)
    (alt1 := fun z1 z2 z2 f => alt1 z1 z2 z2 f) …
    x1 x2
    (fun y _h => f y)
  =
  matcher params (motive := motive)
    (alt1 := fun z1 z2 z2 => alt1 z1 z2 z2 (fun y _ => f y)) …
    x1 x2
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `849a457353df87c49693cff34437d1c9ba571f06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
