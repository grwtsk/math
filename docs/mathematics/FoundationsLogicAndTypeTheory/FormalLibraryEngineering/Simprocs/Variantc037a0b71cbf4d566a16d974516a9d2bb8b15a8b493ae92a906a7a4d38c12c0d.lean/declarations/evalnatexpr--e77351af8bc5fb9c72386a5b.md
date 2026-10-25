# evalNatExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b7eb19051283582840482e46fe7e726cfe9ee969ba21e38997261a6fad1482c",
  "kind": "def",
  "lexical_name": "evalNatExpr",
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
  "slug": "evalnatexpr--e77351af8bc5fb9c72386a5b",
  "source": {
    "blob": "bc96b32f06611e9c60d5065c27635311437a2e32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variantc037a0b71cbf4d566a16d974516a9d2bb8b15a8b493ae92a906a7a4d38c12c0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e77351af8bc5fb9c72386a5b9fe2885ab87f6feaf6198a533a301dc3e4a42bb6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variantc037a0b71cbf4d566a16d974516a9d2bb8b15a8b493ae92a906a7a4d38c12c0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b7eb19051283582840482e46fe7e726cfe9ee969ba21e38997261a6fad1482c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def evalNatExpr (e : Expr) : MetaM (Option Nat) := do
  let ty ← inferType e
  let .const ``Nat _ := ty | return none
  let val ← Lean.Meta.evalExpr Nat (mkConst ``Nat) e
  return some val

open Lean Meta in
simproc_decl count_ofNat (Nat.count _ _) := fun e => do
  let some val ← unsafe evalNatExpr e | return .continue
  let result := mkNatLit val
  let proof ← mkDecideProof (← mkEq e result)
  return .done { expr := result, proof? := some proof }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variantc037a0b71cbf4d566a16d974516a9d2bb8b15a8b493ae92a906a7a4d38c12c0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variantc037a0b71cbf4d566a16d974516a9d2bb8b15a8b493ae92a906a7a4d38c12c0d.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc96b32f06611e9c60d5065c27635311437a2e32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
