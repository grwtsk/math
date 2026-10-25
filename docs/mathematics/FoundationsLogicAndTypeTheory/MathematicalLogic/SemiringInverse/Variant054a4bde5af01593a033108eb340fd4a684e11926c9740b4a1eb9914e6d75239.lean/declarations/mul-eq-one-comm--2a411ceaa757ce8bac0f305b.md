# mul_eq_one_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac5bc2f9-f314-862e-d450-57601ea1205a",
  "kind": "theorem",
  "lexical_name": "mul_eq_one_comm",
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
  "slug": "mul-eq-one-comm--2a411ceaa757ce8bac0f305b",
  "source": {
    "blob": "61b824c91466c5f13157ca4937174082ea059d4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 211,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a411ceaa757ce8bac0f305b9e7add564987fe2039e2236a82bc04b2c172618f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac5bc2f9-f314-862e-d450-57601ea1205a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_eq_one_comm : A * B = 1 ↔ B * A = 1 := by
  suffices h : ∀ A B : Matrix n n R, A * B = 1 → B * A = 1 from ⟨h A B, h B A⟩
  intro A B hAB
  have h0 := detp_mul A B
  rw [hAB, detp_one_one, detp_neg_one_one, zero_add] at h0
  replace h := congr(B * $(detp_smul_adjp hAB))
  simp only [mul_add, mul_smul, add_assoc] at h
  replace h := congr($h + (detp 1 A * detp (-1) B + detp (-1) A * detp 1 B) • 1)
  simp_rw [add_smul, ← smul_smul] at h
  rwa [add_assoc, add_add_add_comm, ← smul_add, ← smul_add,
    add_add_add_comm, ← smul_add, ← smul_add, smul_add, smul_add,
    mul_adjp_add_detp, smul_add, ← mul_adjp_add_detp, smul_add, ← smul_add, ← smul_add,
    add_add_add_comm, smul_smul, smul_smul, ← add_smul, ← h0,
    add_smul, one_smul, ← add_assoc _ 1, add_comm _ 1, add_assoc,
    smul_add, smul_add, add_add_add_comm, smul_smul, smul_smul, ← add_smul,
    ((isAddUnit_detp_smul_mul_adjp hAB).add
      ((isAddUnit_detp_mul_detp hAB).smul_right _)).add_left_inj] at h

variable (A B)

/-- We can construct an instance of invertible A if A has a left inverse. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61b824c91466c5f13157ca4937174082ea059d4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
