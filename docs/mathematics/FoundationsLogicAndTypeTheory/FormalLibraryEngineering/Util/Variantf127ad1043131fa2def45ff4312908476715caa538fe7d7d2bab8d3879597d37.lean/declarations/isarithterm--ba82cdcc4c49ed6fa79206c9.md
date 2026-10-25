# isArithTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efbcb8df8ac18704d70982a93ef423461301da6b6d3774d6049f02ec1a1abe56",
  "kind": "def",
  "lexical_name": "isArithTerm",
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
  "slug": "isarithterm--ba82cdcc4c49ed6fa79206c9",
  "source": {
    "blob": "f8f213041536a5a755dd8a4224ba66dff2caf588",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantf127ad1043131fa2def45ff4312908476715caa538fe7d7d2bab8d3879597d37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba82cdcc4c49ed6fa79206c9ecad0910ecdc140359909b982bd5aefdfb51048e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantf127ad1043131fa2def45ff4312908476715caa538fe7d7d2bab8d3879597d37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efbcb8df8ac18704d70982a93ef423461301da6b6d3774d6049f02ec1a1abe56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isArithTerm (e : Expr) : Bool :=
  match_expr e with
  | HAdd.hAdd _ _ _ _ _ _ => true
  | HSub.hSub _ _ _ _ _ _ => true
  | HMul.hMul _ _ _ _ _ _ => true
  | HDiv.hDiv _ _ _ _ _ _ => true
  | HMod.hMod _ _ _ _ _ _ => true
  | HPow.hPow _ _ _ _ _ _ => true
  | HSMul.hSMul _ _ _ _ _ _ => true
  | Neg.neg _ _ _ => true
  | OfNat.ofNat _ _ _ => true
  | NatCast.natCast _ _ _ => true
  | IntCast.intCast _ _ _ => true
  | _ => false

/-- Quote `e` using `「` and `」` if `e` is an arithmetic term that is being treated as a variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantf127ad1043131fa2def45ff4312908476715caa538fe7d7d2bab8d3879597d37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantf127ad1043131fa2def45ff4312908476715caa538fe7d7d2bab8d3879597d37.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8f213041536a5a755dd8a4224ba66dff2caf588` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
