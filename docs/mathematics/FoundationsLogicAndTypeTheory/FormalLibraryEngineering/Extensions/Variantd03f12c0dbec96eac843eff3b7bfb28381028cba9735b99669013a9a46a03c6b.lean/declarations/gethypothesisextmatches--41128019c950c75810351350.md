# getHypothesisExtMatches

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d916299b2bb26f5307aa98242c511105ee4b057dd57b2beec55a1435db462c0",
  "kind": "def",
  "lexical_name": "getHypothesisExtMatches",
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
  "slug": "gethypothesisextmatches--41128019c950c75810351350",
  "source": {
    "blob": "c623cb15ab9044a7e70f12fd70781939d1908887",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extensions/Variantd03f12c0dbec96eac843eff3b7bfb28381028cba9735b99669013a9a46a03c6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41128019c950c75810351350ee6ffba1ec7904e5a9e5b473d2d3ed3a5c232ce8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extensions/Variantd03f12c0dbec96eac843eff3b7bfb28381028cba9735b99669013a9a46a03c6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d916299b2bb26f5307aa98242c511105ee4b057dd57b2beec55a1435db462c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getHypothesisExtMatches (families : Array Name) (e : Expr) :
    MetaM (Array HypothesisExt) := do
  let env ← getEnv
  let mut matched := #[]
  for familyName in families do
    let family ← getInclusionFamily familyName
    for ext in ← family.hypothesisExt.getState env |>.getMatch e do
      matched := matched.push ext
  return matched.qsort fun a b => a.priority > b.priority

section InclusionParam

/-- A registered named parameter that can be set by the user and used across inclusion and
hypothesis extensions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extensions/Variantd03f12c0dbec96eac843eff3b7bfb28381028cba9735b99669013a9a46a03c6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extensions/Variantd03f12c0dbec96eac843eff3b7bfb28381028cba9735b99669013a9a46a03c6b.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c623cb15ab9044a7e70f12fd70781939d1908887` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
