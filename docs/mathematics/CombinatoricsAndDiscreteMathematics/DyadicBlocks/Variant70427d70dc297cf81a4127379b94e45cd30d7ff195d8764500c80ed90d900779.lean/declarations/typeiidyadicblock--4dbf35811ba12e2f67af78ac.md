# TypeIIDyadicBlock

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6be66c736d2f7db44762a4ae20e3a14eb29ec5a0dda1cb2a7cd262329ffdc92",
  "kind": "structure",
  "lexical_name": "TypeIIDyadicBlock",
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
  "slug": "typeiidyadicblock--4dbf35811ba12e2f67af78ac",
  "source": {
    "blob": "ba01a79bd8791d800207ec1368316feae7c65e59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 94,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant70427d70dc297cf81a4127379b94e45cd30d7ff195d8764500c80ed90d900779.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4dbf35811ba12e2f67af78ac6b2e123036bb20bab6c22b18136cf51e23077490",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant70427d70dc297cf81a4127379b94e45cd30d7ff195d8764500c80ed90d900779.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6be66c736d2f7db44762a4ae20e3a14eb29ec5a0dda1cb2a7cd262329ffdc92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TypeIIDyadicBlock (N : ℕ) where
  M : ℕ
  K : ℕ
  M_pos : 0 < M
  K_pos : 0 < K
  M_isPower : ∃ j : ℕ, M = 2 ^ j
  K_isPower : ∃ j : ℕ, K = 2 ^ j
  leftAboveCutoff : vaughanFourthRootCutoff N < 2 * M
  rightAboveCutoff : vaughanFourthRootCutoff N < 2 * K
  productRelevant : M * K ≤ 2 * N
  nonempty_effective : ∃ (m k : VaughanScaleIndex N),
    M < m.1 ∧ m.1 ≤ 2 * M ∧
      K < k.1 ∧ k.1 ≤ 2 * K ∧
      vaughanFourthRootCutoff N < m.1 ∧
      vaughanFourthRootCutoff N < k.1 ∧
      m.1 * k.1 ≤ 2 * N

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant70427d70dc297cf81a4127379b94e45cd30d7ff195d8764500c80ed90d900779.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant70427d70dc297cf81a4127379b94e45cd30d7ff195d8764500c80ed90d900779.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba01a79bd8791d800207ec1368316feae7c65e59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
