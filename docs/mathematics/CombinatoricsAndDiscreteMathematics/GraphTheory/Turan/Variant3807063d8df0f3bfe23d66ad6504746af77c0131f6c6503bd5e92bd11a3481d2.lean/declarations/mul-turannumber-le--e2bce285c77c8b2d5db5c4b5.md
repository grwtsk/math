# mul_turanNumber_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1cf5a57-1284-4ca0-0b77-287882672c61",
  "kind": "theorem",
  "lexical_name": "mul_turanNumber_le",
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
  "slug": "mul-turannumber-le--e2bce285c77c8b2d5db5c4b5",
  "source": {
    "blob": "3f231edf97a6473d17beef716418cc486190271a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 428,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2bce285c77c8b2d5db5c4b5f4b6434901dc720e21a10f92a3c602658b85f14e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1cf5a57-1284-4ca0-0b77-287882672c61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_turanNumber_le : 2 * r * turanNumber n r ≤ (r - 1) * n ^ 2 := by
  grw [turanNumber_eq, mul_add, Nat.mul_div_le]
  rw [tsub_mul, ← Nat.sub_add_comm]; swap
  · grw [Nat.mod_le]
    exact Nat.zero_le _
  rw [Nat.sub_le_iff_le_add, mul_comm, Nat.add_le_add_iff_left, Nat.choose_two_right,
    ← Nat.mul_div_assoc _ (Nat.even_mul_pred_self _).two_dvd, mul_assoc,
    mul_div_cancel_left₀ _ two_ne_zero, ← mul_assoc, ← mul_rotate, sq, ← mul_rotate (r - 1)]
  gcongr ?_ * _
  rcases r.eq_zero_or_pos with rfl | hr; · lia
  rw [Nat.sub_one_mul, Nat.sub_one_mul, mul_comm]
  exact Nat.sub_le_sub_left (Nat.mod_lt _ hr).le _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f231edf97a6473d17beef716418cc486190271a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
