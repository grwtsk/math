# response_after_contact_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0165ea2-2beb-1686-18b0-6746ea5c394e",
  "kind": "theorem",
  "lexical_name": "response_after_contact_bounds",
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
  "slug": "response-after-contact-bounds--1ea10eee6eed3c82c6dcce9f",
  "source": {
    "blob": "970397fd684e83af649d2e2dd3efe6a2fcbf9d5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 53,
    "path": "GRWTSK/Analysis/InnerProductSpace/CausalContactOperatorCost.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ea10eee6eed3c82c6dcce9f38560d3a71231fd485fcb4df574f7a2daa197700",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0165ea2-2beb-1686-18b0-6746ea5c394e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem response_after_contact_bounds {n : ℕ} (hn : 1 ≤ n) {u : ℝ}
    (arrived : Real.log (n : ℝ) ≤ u) :
    0 ≤ response n u ∧
      response n u ≤ (u - Real.log (n : ℝ)) * (n : ℝ) ^ (-(1 / 2 : ℝ)) := by
  have positive : (0 : ℝ) < n := Nat.cast_pos.mpr (lt_of_lt_of_le Nat.zero_lt_one hn)
  have half := exp_inverse_half (Real.log (n : ℝ))
  rw [Real.exp_log positive] at half
  have factor : Real.exp (-u / 2) =
      Real.exp (-Real.log (n : ℝ) / 2) * Real.exp (-(u - Real.log (n : ℝ)) / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have ordered : Real.exp (-u / 2) ≤ Real.exp (-Real.log (n : ℝ) / 2) :=
    Real.exp_le_exp.mpr (by linarith)
  have tangent := mul_le_mul_of_nonneg_left
    (Real.add_one_le_exp (-(u - Real.log (n : ℝ)) / 2))
    (Real.exp_pos (-Real.log (n : ℝ) / 2)).le
  rw [← factor] at tangent
  rw [response_of_arrived arrived]
  unfold responseKernel
  rw [half]
  constructor <;> nlinarith

/-- The pre-arrival part, including contact, contributes exactly zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/CausalContactOperatorCost.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `970397fd684e83af649d2e2dd3efe6a2fcbf9d5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
