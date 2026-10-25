# elabCasesM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6cdf39a52cec99f932e4a6ab786031e3f17e1e47320240c69948141ce41e0698",
  "kind": "def",
  "lexical_name": "elabCasesM",
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
  "slug": "elabcasesm--9b18a684117fc8c683c50eba",
  "source": {
    "blob": "d63fc8054b4633468a20dd86e88cc1432b9a7688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b18a684117fc8c683c50eba0f59a9c3090b846f1120a54e0817465f9989de6a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6cdf39a52cec99f932e4a6ab786031e3f17e1e47320240c69948141ce41e0698`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def elabCasesM (pats : Array Term) (recursive allowSplit : Bool) : TacticM Unit := do
  let pats ← elabPatterns pats
  liftMetaTactic (casesMatching (matchPatterns pats) recursive allowSplit)

/--
* `casesm p` applies the `cases` tactic to a hypothesis `h : type`
  if `type` matches the pattern `p`.
* `casesm p_1, ..., p_n` applies the `cases` tactic to a hypothesis `h : type`
  if `type` matches one of the given patterns.
* `casesm* p` is a more efficient and compact version of `· repeat casesm p`.
  It is more efficient because the pattern is compiled once.
* `casesm! p` only applies `cases` if the number of resulting subgoals is <= 1.

Example: The following tactic destructs all conjunctions and disjunctions in the current context.
```
casesm* _ ∨ _, _ ∧ _
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d63fc8054b4633468a20dd86e88cc1432b9a7688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
