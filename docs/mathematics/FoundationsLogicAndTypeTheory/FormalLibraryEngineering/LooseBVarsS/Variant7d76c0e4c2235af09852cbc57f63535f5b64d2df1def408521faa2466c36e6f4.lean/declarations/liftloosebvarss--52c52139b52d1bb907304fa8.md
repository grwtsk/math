# liftLooseBVarsS'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53c808b68e143c4473c39349662c853a4262a55866e70145f93e6c74aff3498b",
  "kind": "def",
  "lexical_name": "liftLooseBVarsS'",
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
  "slug": "liftloosebvarss--52c52139b52d1bb907304fa8",
  "source": {
    "blob": "228acff9cf67ee2a12f508f11f4c0187c47b6fed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LooseBVarsS/Variant7d76c0e4c2235af09852cbc57f63535f5b64d2df1def408521faa2466c36e6f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52c52139b52d1bb907304fa8b193466afb8b094427e0a1177e68c1bee5f8adbc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LooseBVarsS/Variant7d76c0e4c2235af09852cbc57f63535f5b64d2df1def408521faa2466c36e6f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53c808b68e143c4473c39349662c853a4262a55866e70145f93e6c74aff3498b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftLooseBVarsS' (e : Expr) (s d : Nat) : AlphaShareBuilderM Expr := do
  replaceS' e fun e offset => do
    let s₁ := s + offset
    if s₁ >= e.looseBVarRange then
      return some e -- `e` does not contain bound variables with idx >= s₁
    else match e with
    | .bvar idx =>
      if idx >= s₁ then
        return some (← mkBVarS (idx + d))
      else
        return none
    | _ => return none

@[inherit_doc liftLooseBVarsS']
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LooseBVarsS/Variant7d76c0e4c2235af09852cbc57f63535f5b64d2df1def408521faa2466c36e6f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LooseBVarsS/Variant7d76c0e4c2235af09852cbc57f63535f5b64d2df1def408521faa2466c36e6f4.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `228acff9cf67ee2a12f508f11f4c0187c47b6fed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
