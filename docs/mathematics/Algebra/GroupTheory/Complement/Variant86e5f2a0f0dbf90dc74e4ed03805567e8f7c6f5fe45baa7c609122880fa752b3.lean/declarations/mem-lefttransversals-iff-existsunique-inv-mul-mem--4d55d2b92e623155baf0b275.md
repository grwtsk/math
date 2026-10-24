# mem_leftTransversals_iff_existsUnique_inv_mul_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:612663e2-c3ce-82a3-a7ec-2c184278e6e8",
  "kind": "theorem",
  "lexical_name": "mem_leftTransversals_iff_existsUnique_inv_mul_mem",
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
  "slug": "mem-lefttransversals-iff-existsunique-inv-mul-mem--4d55d2b92e623155baf0b275",
  "source": {
    "blob": "a16b036b5c5feed15ca4837b8705bca6aa508205",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 216,
    "path": "GRWTSK/Algebra/GroupTheory/Complement/Variant86e5f2a0f0dbf90dc74e4ed03805567e8f7c6f5fe45baa7c609122880fa752b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d55d2b92e623155baf0b275935c7f9fa5c12bcb7f1a4d9e484c9b1e098ddf6f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Complement/Variant86e5f2a0f0dbf90dc74e4ed03805567e8f7c6f5fe45baa7c609122880fa752b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:612663e2-c3ce-82a3-a7ec-2c184278e6e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_leftTransversals_iff_existsUnique_inv_mul_mem :
    S ∈ leftTransversals T ↔ ∀ g : G, ∃! s : S, (s : G)⁻¹ * g ∈ T := by
  rw [leftTransversals, Set.mem_setOf_eq, isComplement_iff_existsUnique]
  refine' ⟨fun h g => _, fun h g => _⟩
  · obtain ⟨x, h1, h2⟩ := h g
    exact
      ⟨x.1, (congr_arg (· ∈ T) (eq_inv_mul_of_mul_eq h1)).mp x.2.2, fun y hy =>
        (Prod.ext_iff.mp (h2 ⟨y, (↑y)⁻¹ * g, hy⟩ (mul_inv_cancel_left ↑y g))).1⟩
  · obtain ⟨x, h1, h2⟩ := h g
    refine' ⟨⟨x, (↑x)⁻¹ * g, h1⟩, mul_inv_cancel_left (↑x) g, fun y hy => _⟩
    have hf := h2 y.1 ((congr_arg (· ∈ T) (eq_inv_mul_of_mul_eq hy)).mp y.2.2)
    exact Prod.ext hf (Subtype.ext (eq_inv_mul_of_mul_eq (hf ▸ hy)))
#align subgroup.mem_left_transversals_iff_exists_unique_inv_mul_mem Subgroup.mem_leftTransversals_iff_existsUnique_inv_mul_mem
#align add_subgroup.mem_left_transversals_iff_exists_unique_neg_add_mem AddSubgroup.mem_leftTransversals_iff_existsUnique_neg_add_mem

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Complement/Variant86e5f2a0f0dbf90dc74e4ed03805567e8f7c6f5fe45baa7c609122880fa752b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Complement/Variant86e5f2a0f0dbf90dc74e4ed03805567e8f7c6f5fe45baa7c609122880fa752b3.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a16b036b5c5feed15ca4837b8705bca6aa508205` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
