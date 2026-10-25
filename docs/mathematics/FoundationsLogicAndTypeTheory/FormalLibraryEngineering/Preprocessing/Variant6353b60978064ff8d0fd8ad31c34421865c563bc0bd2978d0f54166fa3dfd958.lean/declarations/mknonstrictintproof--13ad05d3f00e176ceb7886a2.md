# mkNonstrictIntProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:885d98656da72be17b7faee423811419932224fa472aeb1472d1e9fb6d316719",
  "kind": "def",
  "lexical_name": "mkNonstrictIntProof",
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
  "slug": "mknonstrictintproof--13ad05d3f00e176ceb7886a2",
  "source": {
    "blob": "77a99f8cd2e0f89015b974cd4386134a32d6f92e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 182,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13ad05d3f00e176ceb7886a24770d4561b6a54016dc32f5a3f9c5a60805c3aa8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:885d98656da72be17b7faee423811419932224fa472aeb1472d1e9fb6d316719`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkNonstrictIntProof (pf : Expr) : MetaM (Option Expr) := do
  match ← (← inferType pf).ineqOrNotIneq? with
  | (true, Ineq.lt, .const ``Int [], a, b) =>
    return mkApp (← mkAppM ``Iff.mpr #[← mkAppOptM ``Int.add_one_le_iff #[a, b]]) pf
  | (false, Ineq.le, .const ``Int [], a, b) =>
    return mkApp (← mkAppM ``Iff.mpr #[← mkAppOptM ``Int.add_one_le_iff #[b, a]])
      (← mkAppM ``lt_of_not_ge #[pf])
  | _ => return none

/-- `strengthenStrictInt h` turns a proof `h` of a strict integer inequality `t1 < t2`
into a proof of `t1 ≤ t2 + 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77a99f8cd2e0f89015b974cd4386134a32d6f92e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
