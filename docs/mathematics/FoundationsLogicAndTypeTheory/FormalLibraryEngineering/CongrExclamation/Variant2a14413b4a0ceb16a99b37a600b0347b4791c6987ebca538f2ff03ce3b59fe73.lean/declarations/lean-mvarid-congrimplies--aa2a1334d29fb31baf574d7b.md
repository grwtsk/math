# Lean.MVarId.congrImplies?'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57431d6ff7430b596197f61bb258b13c50e143631ea452b6b1fd6bd7c5dd9d61",
  "kind": "def",
  "lexical_name": "Lean.MVarId.congrImplies?'",
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
  "slug": "lean-mvarid-congrimplies--aa2a1334d29fb31baf574d7b",
  "source": {
    "blob": "bec234e045917543be9f273d1029e9a940519432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 510,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variant2a14413b4a0ceb16a99b37a600b0347b4791c6987ebca538f2ff03ce3b59fe73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa2a1334d29fb31baf574d7b9930afb242d72785572d1be2c64bea5c4c1eb6ec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variant2a14413b4a0ceb16a99b37a600b0347b4791c6987ebca538f2ff03ce3b59fe73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57431d6ff7430b596197f61bb258b13c50e143631ea452b6b1fd6bd7c5dd9d61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.MVarId.congrImplies?' (mvarId : MVarId) : MetaM (Option (List MVarId)) :=
  observing? do
    let [mvarId₁, mvarId₂] ← mvarId.apply (← mkConstWithFreshMVarLevels ``implies_congr')
      | throwError "unexpected number of goals"
    return [mvarId₁, mvarId₂]

/--
Try to apply `Subsingleton.helim` if the goal is a `HEq`. Tries synthesizing a `Subsingleton`
instance for both the LHS and the RHS.

If successful, this reduces proving `@HEq α x β y` to proving `α = β`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variant2a14413b4a0ceb16a99b37a600b0347b4791c6987ebca538f2ff03ce3b59fe73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variant2a14413b4a0ceb16a99b37a600b0347b4791c6987ebca538f2ff03ce3b59fe73.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bec234e045917543be9f273d1029e9a940519432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
