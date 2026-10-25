# withExprs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27eb366b6825cf742f1ede147194a41923494d25e10362d39a0d77f061bf287c",
  "kind": "def",
  "lexical_name": "withExprs",
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
  "slug": "withexprs--24d0ceb910b2e2b49e80fd5b",
  "source": {
    "blob": "f46beb9bb2ba3bc882d85252c962cbd3689e9475",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24d0ceb910b2e2b49e80fd5b0b50b9cf4b371771b45ded357be238cc56f47048",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27eb366b6825cf742f1ede147194a41923494d25e10362d39a0d77f061bf287c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[specialize] def withExprs (a b : Expr) (k : ACM Unit) : GoalM Unit := do
  let ids₁ ← getTermOpIds a
  if ids₁.isEmpty then return ()
  let ids₂ ← getTermOpIds b
  go ids₁ ids₂
where
  go : List Nat → List Nat → GoalM Unit
    | [], _ => return ()
    | _, [] => return ()
    | id₁::ids₁, id₂::ids₂ => do
      if id₁ == id₂ then
        ACM.run id₁ k; go ids₁ ids₂
      else if id₁ < id₂ then
        go ids₁ (id₂::ids₂)
      else
        go (id₁::ids₁) ids₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f46beb9bb2ba3bc882d85252c962cbd3689e9475` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
