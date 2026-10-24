# instLinearWeightsOfCharZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3301bb9fd77c0b95abdf81e0f417d715d8022283eca535e360327b95be61d52c",
  "kind": "instance",
  "lexical_name": "instLinearWeightsOfCharZero",
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
  "slug": "instlinearweightsofcharzero--4b6878c6e175aef1c9de7a4a",
  "source": {
    "blob": "4b2fae72ab752283205fe21fc477051e9547fa70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 139,
    "path": "GRWTSK/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b6878c6e175aef1c9de7a4a3ff0a8f4e5b29256e8fb0ad5f142a832244ddfd3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3301bb9fd77c0b95abdf81e0f417d715d8022283eca535e360327b95be61d52c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instLinearWeightsOfCharZero [CharZero R] :
    LinearWeights R L M where
  map_add χ hχ x y := by
    rw [← smul_right_inj (zero_lt_finrank_genWeightSpace hχ).ne', smul_add, ← Pi.smul_apply,
      ← Pi.smul_apply, ← Pi.smul_apply, ← trace_comp_toEnd_genWeightSpace_eq, map_add]
  map_smul χ hχ t x := by
    rw [← smul_right_inj (zero_lt_finrank_genWeightSpace hχ).ne', smul_comm, ← Pi.smul_apply,
      ← Pi.smul_apply (finrank R _), ← trace_comp_toEnd_genWeightSpace_eq, map_smul]
  map_lie χ hχ x y := by
    rw [← smul_right_inj (zero_lt_finrank_genWeightSpace hχ).ne', nsmul_zero, ← Pi.smul_apply,
      ← trace_comp_toEnd_genWeightSpace_eq, LinearMap.comp_apply, LieHom.coe_toLinearMap,
      LieHom.map_lie, Ring.lie_def, map_sub, LinearMap.trace_mul_comm, sub_self]

end FiniteDimensional

variable [LieRing.IsNilpotent L] (χ : L → R)

/-- A type synonym for the `χ`-weight space but with the action of `x : L`
on `m : genWeightSpace M χ`, shifted to act as `⁅x, m⁆ - χ x • m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b2fae72ab752283205fe21fc477051e9547fa70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
