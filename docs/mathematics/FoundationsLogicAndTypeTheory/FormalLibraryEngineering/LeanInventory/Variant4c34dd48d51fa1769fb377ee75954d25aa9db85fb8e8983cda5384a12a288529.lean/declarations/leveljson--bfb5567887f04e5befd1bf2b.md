# levelJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0adaaa0c282a1e8b715bbdbd2ca606e43cdb50d1c5cab089fe1c3f866a82506",
  "kind": "def",
  "lexical_name": "levelJson",
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
  "slug": "leveljson--bfb5567887f04e5befd1bf2b",
  "source": {
    "blob": "31b7e437739c7912adf4051f5c84e3dcdf326eda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanInventory/Variant4c34dd48d51fa1769fb377ee75954d25aa9db85fb8e8983cda5384a12a288529.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfb5567887f04e5befd1bf2bf12b3746a7260fdd1402c2390dc33e0ef4eb83c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanInventory/Variant4c34dd48d51fa1769fb377ee75954d25aa9db85fb8e8983cda5384a12a288529.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0adaaa0c282a1e8b715bbdbd2ca606e43cdb50d1c5cab089fe1c3f866a82506`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def levelJson (params : List Name) : Level → Except String Json
  | .zero => pure <| arr #[str "zero"]
  | .succ l => return arr #[str "succ", ← levelJson params l]
  | .max a b => return arr #[str "max", ← levelJson params a, ← levelJson params b]
  | .imax a b => return arr #[str "imax", ← levelJson params a, ← levelJson params b]
  | .param n => do
    let some (_, i) := params.zipIdx.find? (fun p => p.1 == n)
      | throw "undeclared universe parameter"
    return arr #[str "param", num i]
  | .mvar _ => throw "unresolved universe metavariable"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanInventory/Variant4c34dd48d51fa1769fb377ee75954d25aa9db85fb8e8983cda5384a12a288529.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanInventory/Variant4c34dd48d51fa1769fb377ee75954d25aa9db85fb8e8983cda5384a12a288529.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31b7e437739c7912adf4051f5c84e3dcdf326eda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
