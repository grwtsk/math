# coe_factor_orderIso_map_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:761941d6-86f0-275b-4d5d-f9f4441566fe",
  "kind": "theorem",
  "lexical_name": "coe_factor_orderIso_map_eq_one_iff",
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
  "slug": "coe-factor-orderiso-map-eq-one-iff--8dd804bf98d65286efbe0688",
  "source": {
    "blob": "cf6279dbc6e2330cd114b57f377f15a6fb4d8011",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 243,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dd804bf98d65286efbe06882f0c62cc263c4b66bd141b410145341789503da3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:761941d6-86f0-275b-4d5d-f9f4441566fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_factor_orderIso_map_eq_one_iff {m u : Associates M} {n : Associates N} (hu' : u ≤ m)
    (d : Set.Iic m ≃o Set.Iic n) : (d ⟨u, hu'⟩ : Associates N) = 1 ↔ u = 1 :=
  ⟨fun hu => by
    rw [show u = (d.symm ⟨d ⟨u, hu'⟩, (d ⟨u, hu'⟩).prop⟩) by
        simp only [Subtype.coe_eta, OrderIso.symm_apply_apply, Subtype.coe_mk]]
    conv_rhs => rw [← factor_orderIso_map_one_eq_bot d.symm]
    congr, fun hu => by
    simp_rw [hu]
    conv_rhs => rw [← factor_orderIso_map_one_eq_bot d]⟩
#align coe_factor_order_iso_map_eq_one_iff coe_factor_orderIso_map_eq_one_iff

section

variable [UniqueFactorizationMonoid N] [UniqueFactorizationMonoid M]

open DivisorChain

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf6279dbc6e2330cd114b57f377f15a6fb4d8011` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
