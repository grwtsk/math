# instLinearWeightsOfCharZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ea076f00c5359a3ac061b9e74096495cd52d33fe5b54d0806ada4d90dc18612",
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
  "slug": "instlinearweightsofcharzero--5355f1f08faecede36685a13",
  "source": {
    "blob": "81ce9dfd398bccea98a343c5e1cd55f89e7e6653",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 147,
    "path": "GRWTSK/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5355f1f08faecede36685a13e10939755ddbe290f6ec73e7793aedee3091ad5c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ea076f00c5359a3ac061b9e74096495cd52d33fe5b54d0806ada4d90dc18612`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–165.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81ce9dfd398bccea98a343c5e1cd55f89e7e6653` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
