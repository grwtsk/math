# cbvGoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:592f9aa8a03d2299aadc05770d098421a6d53ae36aeff6a35fb1bb398f1bd1ae",
  "kind": "def",
  "lexical_name": "cbvGoal",
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
  "slug": "cbvgoal--ea695ae6243550b0b331e3db",
  "source": {
    "blob": "df120e845f040340f8a0d12afd3754fac549981a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 430,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea695ae6243550b0b331e3dba3d66525e7908f1010b692c5f810eb9076c2b95d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:592f9aa8a03d2299aadc05770d098421a6d53ae36aeff6a35fb1bb398f1bd1ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def cbvGoal (mvarId : MVarId) (simplifyTarget : Bool := true) (fvarIdsToSimp : Array FVarId := #[]) : MetaM (Option MVarId) :=
  Sym.SymM.run do
    cbvGoalCore (← Sym.preprocessMVar mvarId) simplifyTarget fvarIdsToSimp

/--
Attempt to close a goal of the form `decide P = true` by reducing only the LHS using `cbv`.

- If the LHS reduces to `Bool.true`, the goal is closed successfully.
- If the LHS reduces to `Bool.false`, throws a user-friendly error indicating the proposition is false.
- Otherwise, throws a user-friendly error showing where the reduction got stuck.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df120e845f040340f8a0d12afd3754fac549981a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
