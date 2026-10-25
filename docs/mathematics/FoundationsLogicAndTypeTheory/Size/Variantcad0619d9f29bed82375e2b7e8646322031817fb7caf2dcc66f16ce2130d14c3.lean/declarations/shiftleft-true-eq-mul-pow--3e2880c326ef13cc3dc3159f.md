# shiftLeft'_true_eq_mul_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55fcfe8f-06b0-e68a-0471-af6a9d735fe6",
  "kind": "theorem",
  "lexical_name": "shiftLeft'_true_eq_mul_pow",
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
  "slug": "shiftleft-true-eq-mul-pow--3e2880c326ef13cc3dc3159f",
  "source": {
    "blob": "4416aec37e9aef4294bec31263e6d06dcd4ef6e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Size/Variantcad0619d9f29bed82375e2b7e8646322031817fb7caf2dcc66f16ce2130d14c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e2880c326ef13cc3dc3159f8742b98bd2d6e5d74d4839634a22102aec6aff48",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Size/Variantcad0619d9f29bed82375e2b7e8646322031817fb7caf2dcc66f16ce2130d14c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55fcfe8f-06b0-e68a-0471-af6a9d735fe6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftLeft'_true_eq_mul_pow (m) : ∀ n, shiftLeft' true m n + 1 = (m + 1) * 2 ^ n
  | 0 => by simp [shiftLeft', Nat.pow_zero]
  | k + 1 => by
    rw [shiftLeft', bit_val, Bool.toNat_true, Nat.add_assoc, ← Nat.mul_add_one,
      shiftLeft'_true_eq_mul_pow m k, Nat.mul_left_comm, Nat.mul_comm 2, Nat.pow_succ]

@[deprecated (since := "2026-03-22")] alias shiftLeft'_tt_eq_mul_pow := shiftLeft'_true_eq_mul_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Size/Variantcad0619d9f29bed82375e2b7e8646322031817fb7caf2dcc66f16ce2130d14c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Size/Variantcad0619d9f29bed82375e2b7e8646322031817fb7caf2dcc66f16ce2130d14c3.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4416aec37e9aef4294bec31263e6d06dcd4ef6e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
