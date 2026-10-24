# jacobiSum_one_nontrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5c67850-a0af-fb19-efad-82b7939937a5",
  "kind": "theorem",
  "lexical_name": "jacobiSum_one_nontrivial",
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
  "slug": "jacobisum-one-nontrivial--b812e915a2a00034313aa152",
  "source": {
    "blob": "6e1af8b061b9d202ffe79e2881e13e2e895548a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 134,
    "path": "GRWTSK/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b812e915a2a00034313aa15271ea4f0266e8cdac4ad4c91bd20f1516819dcbb1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5c67850-a0af-fb19-efad-82b7939937a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobiSum_one_nontrivial {χ : MulChar F R} (hχ : χ ≠ 1) : jacobiSum 1 χ = -1 := by
  classical
  have : ∑ x ∈ univ \ {0, 1}, ((1 : MulChar F R) x - 1) * (χ (1 - x) - 1) = 0 := by
    apply Finset.sum_eq_zero
    simp +contextual only [mem_sdiff, mem_univ, mem_insert, mem_singleton,
      not_or, ← isUnit_iff_ne_zero, true_and, MulChar.one_apply, sub_self, zero_mul,
      implies_true]
  simp only [jacobiSum_eq_aux, MulChar.sum_one_eq_card_units, MulChar.sum_eq_zero_of_ne_one hχ,
    add_zero, Fintype.card_eq_card_units_add_one (α := F), Nat.cast_add, Nat.cast_one,
    sub_add_cancel_left, this]

/-- If `χ` is a nontrivial multiplicative character on a finite field `F`,
then `J(χ,χ⁻¹) = -χ(-1)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e1af8b061b9d202ffe79e2881e13e2e895548a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
