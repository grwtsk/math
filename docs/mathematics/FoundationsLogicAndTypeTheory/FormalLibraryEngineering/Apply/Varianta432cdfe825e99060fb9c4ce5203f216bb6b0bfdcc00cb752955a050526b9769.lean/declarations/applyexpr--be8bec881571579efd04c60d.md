# applyExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:935aae22d01568653bf89827dcaabb7eff49228c9a242aa2bc229a64a16958a6",
  "kind": "def",
  "lexical_name": "applyExpr",
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
  "slug": "applyexpr--be8bec881571579efd04c60d",
  "source": {
    "blob": "aab3c161dd9969027e6404cd4ffa3e83b5a0b698",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Varianta432cdfe825e99060fb9c4ce5203f216bb6b0bfdcc00cb752955a050526b9769.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be8bec881571579efd04c60ddd2b7b99cfc1f872a845bbfb8101f8570b76f699",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Varianta432cdfe825e99060fb9c4ce5203f216bb6b0bfdcc00cb752955a050526b9769.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:935aae22d01568653bf89827dcaabb7eff49228c9a242aa2bc229a64a16958a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applyExpr (goal : MVarId) (e : Expr) (eStx : Term)
    (patSubsts? : Option (Array Substitution)) (md : TransparencyMode) :
    BaseM RuleTacOutput := do
  if let some patSubsts := patSubsts? then
    let mut rapps := Array.mkEmpty patSubsts.size
    let initialState ← saveState
    for patSubst in patSubsts do
      try
        let rapp ← applyExpr' goal e eStx patSubst md
        rapps := rapps.push rapp
      catch _ =>
        continue
      finally
        restoreState initialState
    if rapps.isEmpty then
      throwError "failed to apply '{e}' with any of the matched instances of the rule pattern"
    return { applications := rapps }
  else
    let rapp ← applyExpr' goal e eStx none md
    return { applications := #[rapp] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Varianta432cdfe825e99060fb9c4ce5203f216bb6b0bfdcc00cb752955a050526b9769.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Varianta432cdfe825e99060fb9c4ce5203f216bb6b0bfdcc00cb752955a050526b9769.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aab3c161dd9969027e6404cd4ffa3e83b5a0b698` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
