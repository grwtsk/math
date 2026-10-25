# evalIntervalRefute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22df3b8ace8ee98eadcb9d85139ac66c720984e0d1626166fb66cbd6c7299e6a",
  "kind": "def",
  "lexical_name": "evalIntervalRefute",
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
  "slug": "evalintervalrefute--ead89a32d2022cb69ff28b22",
  "source": {
    "blob": "f55ae713b9ff6ad700fe6038b4408283e1edbbe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 333,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ead89a32d2022cb69ff28b22e880b53ac4277c63ef91b52299f226b10de595bd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22df3b8ace8ee98eadcb9d85139ac66c720984e0d1626166fb66cbd6c7299e6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalIntervalRefute : Tactic := fun stx => do
  -- Parse optional depth argument
  let depth : Nat := match stx[1].getOptional? with
    | some numStx =>
      match numStx.isNatLit? with
      | some n => n
      | none => 20
    | none => 20

  let cfg : RefuteConfig := {
    maxIterations := 2000
    taylorDepth := depth
    tolerance := 1/10000
  }
  refuteCore cfg

end LeanCert.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f55ae713b9ff6ad700fe6038b4408283e1edbbe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
