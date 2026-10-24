# order_eq_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d97725da63704badce5500c09be11e3826bbde33",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d045704b9eed2f634accda12eb68d6efe3d790f74b043d328f4d2c9252a381b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e219f27-372a-da7a-9447-254a64849d2c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cab0988f-a7f0-ac96-398d-4b27890a7578",
  "kind": "theorem",
  "lexical_name": "order_eq_nat",
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
  "slug": "order-eq-nat--c123faf54be55d4f5d76e955",
  "source": {
    "blob": "d97725da63704badce5500c09be11e3826bbde33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 120,
    "path": "GRWTSK/Algebra/Order/Variant7d045704b9eed2f634accda12eb68d6efe3d790f74b043d328f4d2c9252a381b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c123faf54be55d4f5d76e955ac83d14ccbdbbc7e6f9995b2e27a0c44324f9ac0",
  "verification": {
    "reference": "docs/verification/Algebra/Order/Variant7d045704b9eed2f634accda12eb68d6efe3d790f74b043d328f4d2c9252a381b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cab0988f-a7f0-ac96-398d-4b27890a7578`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem order_eq_nat {φ : R⟦X⟧} {n : ℕ} :
    order φ = n ↔ coeff n φ ≠ 0 ∧ ∀ i, i < n → coeff i φ = 0 := by
  rcases eq_or_ne φ 0 with (rfl | hφ)
  · simp
  simp [order, dite_eq_right hφ, Nat.find_eq_iff]

/-- The order of a formal power series is exactly `n` if the `n`th coefficient is nonzero,
and the `i`th coefficient is `0` for all `i < n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Order/Variant7d045704b9eed2f634accda12eb68d6efe3d790f74b043d328f4d2c9252a381b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Order/Variant7d045704b9eed2f634accda12eb68d6efe3d790f74b043d328f4d2c9252a381b.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d97725da63704badce5500c09be11e3826bbde33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
