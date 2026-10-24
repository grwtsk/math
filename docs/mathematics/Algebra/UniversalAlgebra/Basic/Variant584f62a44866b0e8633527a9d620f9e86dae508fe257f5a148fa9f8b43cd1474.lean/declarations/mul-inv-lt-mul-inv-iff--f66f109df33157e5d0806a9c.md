# mul_inv_lt_mul_inv_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f57602d3-d757-cbb3-c485-41e75f63476c",
  "kind": "theorem",
  "lexical_name": "mul_inv_lt_mul_inv_iff'",
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
  "slug": "mul-inv-lt-mul-inv-iff--f66f109df33157e5d0806a9c",
  "source": {
    "blob": "692cfe50893f5af1191c9b1040cd443603aa246a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 385,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant584f62a44866b0e8633527a9d620f9e86dae508fe257f5a148fa9f8b43cd1474.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f66f109df33157e5d0806a9c65b761acc7f92d84e25d9b52a4a4bbed2a908cc5",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant584f62a44866b0e8633527a9d620f9e86dae508fe257f5a148fa9f8b43cd1474.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f57602d3-d757-cbb3-c485-41e75f63476c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_inv_lt_mul_inv_iff' : a * b⁻¹ < c * d⁻¹ ↔ a * d < c * b := by
  rw [mul_comm c, mul_inv_lt_inv_mul_iff, mul_comm]

end LT

end CommGroup

alias ⟨one_le_of_inv_le_one, _⟩ := Left.inv_le_one_iff

attribute [to_additive] one_le_of_inv_le_one

alias ⟨le_one_of_one_le_inv, _⟩ := Left.one_le_inv_iff

attribute [to_additive nonpos_of_neg_nonneg] le_one_of_one_le_inv

alias ⟨lt_of_inv_lt_inv, _⟩ := inv_lt_inv_iff

attribute [to_additive] lt_of_inv_lt_inv

alias ⟨one_lt_of_inv_lt_one, _⟩ := Left.inv_lt_one_iff

attribute [to_additive] one_lt_of_inv_lt_one

alias inv_lt_one_iff_one_lt := Left.inv_lt_one_iff

attribute [to_additive] inv_lt_one_iff_one_lt

alias inv_lt_one' := Left.inv_lt_one_iff

attribute [to_additive neg_lt_zero] inv_lt_one'

alias ⟨inv_of_one_lt_inv, _⟩ := Left.one_lt_inv_iff

attribute [to_additive neg_of_neg_pos] inv_of_one_lt_inv

alias ⟨_, one_lt_inv_of_inv⟩ := Left.one_lt_inv_iff

attribute [to_additive neg_pos_of_neg] one_lt_inv_of_inv

alias ⟨mul_le_of_le_inv_mul, _⟩ := le_inv_mul_iff_mul_le

attribute [to_additive] mul_le_of_le_inv_mul

alias ⟨_, le_inv_mul_of_mul_le⟩ := le_inv_mul_iff_mul_le

attribute [to_additive] le_inv_mul_of_mul_le

alias ⟨_, inv_mul_le_of_le_mul⟩ := inv_mul_le_iff_le_mul

attribute [to_additive] inv_mul_le_of_le_mul

alias ⟨mul_lt_of_lt_inv_mul, _⟩ := lt_inv_mul_iff_mul_lt

attribute [to_additive] mul_lt_of_lt_inv_mul

alias ⟨_, lt_inv_mul_of_mul_lt⟩ := lt_inv_mul_iff_mul_lt

attribute [to_additive] lt_inv_mul_of_mul_lt

alias ⟨lt_mul_of_inv_mul_lt, inv_mul_lt_of_lt_mul⟩ := inv_mul_lt_iff_lt_mul

attribute [to_additive] lt_mul_of_inv_mul_lt

attribute [to_additive] inv_mul_lt_of_lt_mul

alias lt_mul_of_inv_mul_lt_left := lt_mul_of_inv_mul_lt

attribute [to_additive] lt_mul_of_inv_mul_lt_left

alias inv_le_one' := Left.inv_le_one_iff

attribute [to_additive neg_nonpos] inv_le_one'

alias one_le_inv' := Left.one_le_inv_iff

attribute [to_additive neg_nonneg] one_le_inv'

alias one_lt_inv' := Left.one_lt_inv_iff

attribute [to_additive neg_pos] one_lt_inv'

--  Most of the lemmas that are primed in this section appear in ordered_field.
--  I (DT) did not try to minimise the assumptions.
section Group

variable [Group α] [LE α]

section Right

variable [MulRightMono α] {a b c : α}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant584f62a44866b0e8633527a9d620f9e86dae508fe257f5a148fa9f8b43cd1474.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant584f62a44866b0e8633527a9d620f9e86dae508fe257f5a148fa9f8b43cd1474.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `692cfe50893f5af1191c9b1040cd443603aa246a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
