# bitwise_and

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ed4a99e-6e41-b4e0-0001-c8f826c56034",
  "kind": "theorem",
  "lexical_name": "bitwise_and",
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
  "slug": "bitwise-and--a01257cd82a00a611e4fd431",
  "source": {
    "blob": "8bd329dbcd2d084804e3ad9b35872b808677b199",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 243,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variantc33d63bfd13b57b36db876fae92fc0f14f7513c6b9d657eed2411328459ad4bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a01257cd82a00a611e4fd43193699ee75808238b24085ff7f1641bd7df13aa13",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Bitwise/Variantc33d63bfd13b57b36db876fae92fc0f14f7513c6b9d657eed2411328459ad4bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ed4a99e-6e41-b4e0-0001-c8f826c56034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bitwise_and : bitwise and = land := by
  funext m n
  rcases m with m | m <;> rcases n with n | n <;> try {rfl}
    <;> simp only [bitwise, natBitwise, Bool.not_false,
      cond_false, cond_true, Bool.and_true,
      Bool.and_false]
  · rw [Nat.bitwise_swap, Function.swap]
    congr
    funext x y
    cases x <;> cases y <;> rfl
  · congr
    simp

-- Porting note: Was `bitwise_tac` in mathlib
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Bitwise/Variantc33d63bfd13b57b36db876fae92fc0f14f7513c6b9d657eed2411328459ad4bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variantc33d63bfd13b57b36db876fae92fc0f14f7513c6b9d657eed2411328459ad4bc.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bd329dbcd2d084804e3ad9b35872b808677b199` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
