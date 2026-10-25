# collectLocalDeclsLetValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9618362c573d5023df7b7ef4a1e6e1dc3c94b9ef74a0d71f2b1f54d0f399a443",
  "kind": "def",
  "lexical_name": "collectLocalDeclsLetValue",
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
  "slug": "collectlocaldeclsletvalue--7606ca90eeac70b3689e7819",
  "source": {
    "blob": "e377594512dc75cc0e2eb1084fcbefce75dd0c49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDead/Variantc5a22e15eab79ebd6ef1e8f302095c69aeaccb12275f7468b505b03cde97a582.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7606ca90eeac70b3689e7819c6e37e2468a8b0cf6d9ad31cdec7063dd93781e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDead/Variantc5a22e15eab79ebd6ef1e8f302095c69aeaccb12275f7468b505b03cde97a582.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9618362c573d5023df7b7ef4a1e6e1dc3c94b9ef74a0d71f2b1f54d0f399a443`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def collectLocalDeclsLetValue (s : UsedLocalDecls) (e : LetValue pu) : UsedLocalDecls :=
  match e with
  | .erased  | .lit .. => s
  | .proj _ _ fvarId _ | .reset _ fvarId _ | .sproj _ _ fvarId _ | .uproj _ fvarId _
  | .oproj _ fvarId _ | .box _ fvarId _ | .unbox fvarId _ | .isShared fvarId _ => s.insert fvarId
  | .const _ _ args _ => collectLocalDeclsArgs s args
  | .fvar fvarId args | .reuse fvarId _ _ args _   => collectLocalDeclsArgs (s.insert fvarId) args
  | .fap _ args _ | .pap _ args _ | .ctor _ args _ => collectLocalDeclsArgs s args

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDead/Variantc5a22e15eab79ebd6ef1e8f302095c69aeaccb12275f7468b505b03cde97a582.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDead/Variantc5a22e15eab79ebd6ef1e8f302095c69aeaccb12275f7468b505b03cde97a582.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e377594512dc75cc0e2eb1084fcbefce75dd0c49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
