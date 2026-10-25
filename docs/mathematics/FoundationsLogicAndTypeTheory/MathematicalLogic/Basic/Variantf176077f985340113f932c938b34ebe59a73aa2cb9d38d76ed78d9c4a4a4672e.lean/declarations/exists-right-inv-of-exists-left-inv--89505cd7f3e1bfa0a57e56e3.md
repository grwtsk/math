# exists_right_inv_of_exists_left_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e004fb1-30cd-5d3d-7e32-9e7238340cb2",
  "kind": "theorem",
  "lexical_name": "exists_right_inv_of_exists_left_inv",
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
  "slug": "exists-right-inv-of-exists-left-inv--89505cd7f3e1bfa0a57e56e3",
  "source": {
    "blob": "fc6a5a0bb40df0aa897b454826f945b2a9d7b9e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 277,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf176077f985340113f932c938b34ebe59a73aa2cb9d38d76ed78d9c4a4a4672e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89505cd7f3e1bfa0a57e56e3b25d8616f7a273599ab5296a1ff63c4e3b8babe0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf176077f985340113f932c938b34ebe59a73aa2cb9d38d76ed78d9c4a4a4672e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e004fb1-30cd-5d3d-7e32-9e7238340cb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_right_inv_of_exists_left_inv {α} [MonoidWithZero α]
    (h : ∀ a : α, a ≠ 0 → ∃ b : α, b * a = 1) {a : α} (ha : a ≠ 0) : ∃ b : α, a * b = 1 := by
  obtain _ | _ := subsingleton_or_nontrivial α
  · exact ⟨a, Subsingleton.elim _ _⟩
  obtain ⟨b, hb⟩ := h a ha
  obtain ⟨c, hc⟩ := h b (left_ne_zero_of_mul <| hb.trans_ne one_ne_zero)
  refine ⟨b, ?_⟩
  conv_lhs => rw [← one_mul (a * b), ← hc, mul_assoc, ← mul_assoc b, hb, one_mul, hc]

end MonoidWithZero

section CancelMonoidWithZero

variable {a b : M₀}
variable [MulZeroOneClass M₀]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf176077f985340113f932c938b34ebe59a73aa2cb9d38d76ed78d9c4a4a4672e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf176077f985340113f932c938b34ebe59a73aa2cb9d38d76ed78d9c4a4a4672e.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc6a5a0bb40df0aa897b454826f945b2a9d7b9e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
