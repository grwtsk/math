# bitwise_diff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:921dbbf5-7240-35ad-d6d0-d171d7e5545d",
  "kind": "theorem",
  "lexical_name": "bitwise_diff",
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
  "slug": "bitwise-diff--4f623a0d3f864a0c80fc7cdc",
  "source": {
    "blob": "104d452e5308bbaa39a509864a2a8c4efa741447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 257,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f623a0d3f864a0c80fc7cdcd7336fe76398b143459eda219caaeb02231f01af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:921dbbf5-7240-35ad-d6d0-d171d7e5545d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bitwise_diff : (bitwise fun a b => a && not b) = ldiff := by
  funext m n
  rcases m with m | m <;> rcases n with n | n <;> try {rfl}
    <;> simp only [bitwise, natBitwise, Bool.not_false, Bool.or_true,
      cond_false, cond_true, lor, Nat.ldiff, Bool.and_true, negSucc.injEq,
      Bool.and_false, Nat.land, Bool.not_true, ldiff, Nat.lor]
  · congr
    funext x y
    cases x <;> cases y <;> rfl
  · congr
    funext x y
    cases x <;> cases y <;> rfl
  · rw [Nat.bitwise_swap, Function.swap]
    congr
    funext x y
    cases x <;> cases y <;> rfl

-- Porting note: Was `bitwise_tac` in mathlib
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `104d452e5308bbaa39a509864a2a8c4efa741447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
