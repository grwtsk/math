# exists_idempotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcda3c09-7a70-c1aa-63f4-41d349e8cc98",
  "kind": "theorem",
  "lexical_name": "exists_idempotent",
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
  "slug": "exists-idempotent--d2a48a53d4f59a61a0309449",
  "source": {
    "blob": "c3da9282cf8b8c26b363496bee948863bfe1ec81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 257,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Variantb87cc09a0ae2ab173002cdf849bcdff7accb87fa9c1c8776fe5713b96ea36bdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2a48a53d4f59a61a030944906bf2d2dc0362389a8935645441fbf390af092d5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Variantb87cc09a0ae2ab173002cdf849bcdff7accb87fa9c1c8776fe5713b96ea36bdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcda3c09-7a70-c1aa-63f4-41d349e8cc98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_idempotent : ∃ x : α, x + x = x := by
  obtain ⟨a, b, h⟩ := winker (α := α)
  let c := b + 2 • -(a + -b)
  have k₁ : a + c = c := by
    unfold c
    rw [← add_assoc, h]
  have k₂ : -b = -c := by
    rw [← mann_38 (show 1 ≤ 2 by lia) (congrArg (-·) h), smul2,
      show b + (a + -(a + -b) + (a + -(a + -b))) = a + (a + b) + (-(a + -b) + -(a + -b)) by ac_rfl,
      h, h, ← smul2]
  have k₃ : c + -(a + -c) = c := by
    rw [← k₂]
    conv_lhs => simp only [c]
    nth_rw 1 [add_assoc, smul2, ← h, ← h, ← h,
      show a + (a + (a + b)) + (-(a + -b) + -(a + -b) + -(a + -b)) =
        b + ((a + -(a + -b)) + (a + -(a + -b)) + (a + -(a + -b))) by ac_rfl,
      ← smul3, ← mann_40 (.inl (by rw [h])), smul2,
      show b + (a + -(a + -b) + (a + -(a + -b))) =
        a + (a + b) + (-(a + -b) + -(a + -b)) by ac_rfl, ← smul2, h, h]
  have k₄ : -(-(c + -c) + -c) = c := by
    nth_rw 4 [← robbins c (a + -c)]
    nth_rw 3 [← k₃]
    nth_rw 1 [← k₁]
    ac_rfl
  replace k₄ := mann_40 (.inr k₄)
  set d := c + -(c + -c)
  have fin : 3 • d + d = 2 • d + d := by
    change _ + (c + -(c + -c)) = _ + (c + -(c + -c))
    simp_rw [← add_assoc]
    rw [add_comm (2 • d), k₄, add_comm (3 • d)]
  use 3 • d
  nth_rw 2 [smul3]
  rw [← add_assoc, ← add_assoc _ d]
  iterate 3 rw [fin, ← smul_succ (by lia)]

end Idempotence

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Variantb87cc09a0ae2ab173002cdf849bcdff7accb87fa9c1c8776fe5713b96ea36bdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Variantb87cc09a0ae2ab173002cdf849bcdff7accb87fa9c1c8776fe5713b96ea36bdd.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3da9282cf8b8c26b363496bee948863bfe1ec81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
