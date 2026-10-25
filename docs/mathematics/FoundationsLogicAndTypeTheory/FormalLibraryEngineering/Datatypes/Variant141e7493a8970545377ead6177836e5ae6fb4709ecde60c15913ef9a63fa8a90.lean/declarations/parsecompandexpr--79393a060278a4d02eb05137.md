# parseCompAndExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:625b9086c39cda709fc251ac67662b0c7617cdb9e82aea27a9b882cbe7c7b43d",
  "kind": "def",
  "lexical_name": "parseCompAndExpr",
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
  "slug": "parsecompandexpr--79393a060278a4d02eb05137",
  "source": {
    "blob": "31dde457f4eead403a1b0ba7768b065b760a3b99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 284,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant141e7493a8970545377ead6177836e5ae6fb4709ecde60c15913ef9a63fa8a90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79393a060278a4d02eb05137672f9ea5a87b2b6959869d4da66a2a9c55939015",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant141e7493a8970545377ead6177836e5ae6fb4709ecde60c15913ef9a63fa8a90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:625b9086c39cda709fc251ac67662b0c7617cdb9e82aea27a9b882cbe7c7b43d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseCompAndExpr (e : Expr) : MetaM (Ineq × Expr) := do
  let (rel, _, e, z) ← e.ineq?
  if z.zero? then return (rel, e) else throwError "invalid comparison, rhs not zero: {z}"

/--
`mkSingleCompZeroOf c h` assumes that `h` is a proof of `t R 0`.
It produces a pair `(R', h')`, where `h'` is a proof of `c*t R' 0`.
Typically `R` and `R'` will be the same, except when `c = 0`, in which case `R'` is `=`.
If `c = 1`, `h'` is the same as `h` -- specifically, it does *not* change the type to `1*t R 0`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant141e7493a8970545377ead6177836e5ae6fb4709ecde60c15913ef9a63fa8a90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant141e7493a8970545377ead6177836e5ae6fb4709ecde60c15913ef9a63fa8a90.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31dde457f4eead403a1b0ba7768b065b760a3b99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
