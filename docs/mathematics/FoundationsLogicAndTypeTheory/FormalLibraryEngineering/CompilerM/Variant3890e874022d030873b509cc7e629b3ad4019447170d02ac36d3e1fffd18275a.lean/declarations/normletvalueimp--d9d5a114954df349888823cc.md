# normLetValueImp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3004e41f2df76681ee9c66121f48c460bd113b7fecf8988722002b9aca260af1",
  "kind": "def",
  "lexical_name": "normLetValueImp",
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
  "slug": "normletvalueimp--d9d5a114954df349888823cc",
  "source": {
    "blob": "5149b8060c01dbd9721ee36ead44c9cde16a8bef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 275,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant3890e874022d030873b509cc7e629b3ad4019447170d02ac36d3e1fffd18275a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9d5a114954df349888823ccac02f22f934f4ad192f654a119d368c51f3753aa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant3890e874022d030873b509cc7e629b3ad4019447170d02ac36d3e1fffd18275a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3004e41f2df76681ee9c66121f48c460bd113b7fecf8988722002b9aca260af1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def normLetValueImp (s : FVarSubst pu) (e : LetValue pu) (translator : Bool) : LetValue pu :=
  match e with
  | .erased | .lit .. => e
  | .proj _ _ fvarId _ | .sproj _ _ fvarId _ | .uproj _ fvarId _ | .oproj _ fvarId _  =>
    match normFVarImp s fvarId translator with
    | .fvar fvarId' => e.updateProj! fvarId'
    | .erased => .erased
  | .const _ _ args _ | .ctor _ args _ | .fap _ args _ | .pap _ args _ =>
    e.updateArgs! (normArgsImp s args translator)
  | .fvar fvarId args => match normFVarImp s fvarId translator with
    | .fvar fvarId' => e.updateFVar! fvarId' (normArgsImp s args translator)
    | .erased => .erased
  | .reset n fvarId _ =>
    match normFVarImp s fvarId translator with
    | .fvar fvarId' => e.updateReset! n fvarId'
    | .erased => .erased
  | .reuse fvarId info updateHeader args _ =>
    match normFVarImp s fvarId translator with
    | .fvar fvarId' => e.updateReuse! fvarId' info updateHeader (normArgsImp s args translator)
    | .erased => .erased
  | .box ty fvarId _ =>
    match normFVarImp s fvarId translator with
    | .fvar fvarId' => e.updateBox! ty fvarId'
    | .erased => .erased
  | .unbox fvarId _ =>
    match normFVarImp s fvarId translator with
    | .fvar fvarId' => e.updateUnbox! fvarId'
    | .erased => .erased
  | .isShared fvarId _ =>
    match normFVarImp s fvarId translator with
    | .fvar fvarId' => e.updateIsShared! fvarId'
    | .erased => .erased

/--
Interface for monads that have a free substitutions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant3890e874022d030873b509cc7e629b3ad4019447170d02ac36d3e1fffd18275a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant3890e874022d030873b509cc7e629b3ad4019447170d02ac36d3e1fffd18275a.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5149b8060c01dbd9721ee36ead44c9cde16a8bef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
