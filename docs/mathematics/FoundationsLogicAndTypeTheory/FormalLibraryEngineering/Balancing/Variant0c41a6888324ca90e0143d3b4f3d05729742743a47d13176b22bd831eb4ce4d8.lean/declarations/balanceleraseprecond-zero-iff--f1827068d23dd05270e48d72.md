# balanceLErasePrecond_zero_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f663256-d9e2-b30b-476a-d0b328156ff6",
  "kind": "theorem",
  "lexical_name": "balanceLErasePrecond_zero_iff'",
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
  "slug": "balanceleraseprecond-zero-iff--f1827068d23dd05270e48d72",
  "source": {
    "blob": "8a9edfc50ebaaf22b84d3e1758a3e5989fc92b55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 427,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant0c41a6888324ca90e0143d3b4f3d05729742743a47d13176b22bd831eb4ce4d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1827068d23dd05270e48d723d386e8b8c5de7f05eb39288be2c9985053b3421",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant0c41a6888324ca90e0143d3b4f3d05729742743a47d13176b22bd831eb4ce4d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f663256-d9e2-b30b-476a-d0b328156ff6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balanceLErasePrecond_zero_iff' {n : Nat} : BalanceLErasePrecond n 0 ↔ n ≤ 3 := by
  tree_tac

/-!
The following definitions are not actually used by the tree map implementation. They are only used
in the model function `balanceₘ`, which exists for proof purposes only.

The terminology is consistent with the comment above
[the `balance` implementation](https://hackage.haskell.org/package/containers-0.7/docs/src/Data.Map.Internal.html#balance)
in Haskell.
-/

/-- Constructor for an inner node with the correct size. -/
@[Std.Internal.tree_tac]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant0c41a6888324ca90e0143d3b4f3d05729742743a47d13176b22bd831eb4ce4d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant0c41a6888324ca90e0143d3b4f3d05729742743a47d13176b22bd831eb4ce4d8.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a9edfc50ebaaf22b84d3e1758a3e5989fc92b55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
