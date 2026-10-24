# tprod_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f399bdcc-2715-a50f-4290-b9e5898f9e61",
  "kind": "theorem",
  "lexical_name": "tprod_const",
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
  "slug": "tprod-const--2adc355b57b674fe458483fe",
  "source": {
    "blob": "a388fffe00ac421b88935059d5300a63f90641b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 424,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2adc355b57b674fe458483fe550542cce293b09769af6ed9bf2b547031b0cf5e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f399bdcc-2715-a50f-4290-b9e5898f9e61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tprod_const [T2Space G] (a : G) : ∏' _ : β, a = a ^ (Nat.card β) := by
  rcases finite_or_infinite β with hβ|hβ
  · letI : Fintype β := Fintype.ofFinite β
    rw [tprod_eq_prod (s := univ) (fun x hx ↦ (hx (mem_univ x)).elim)]
    simp only [prod_const, Nat.card_eq_fintype_card, Fintype.card]
  · simp only [Nat.card_eq_zero_of_infinite, pow_zero]
    rcases eq_or_ne a 1 with rfl|ha
    · simp
    · apply tprod_eq_one_of_not_multipliable
      simpa [multipliable_const_iff] using ha

end IsTopologicalGroup

section CommGroupWithZero
variable {K : Type*} [CommGroupWithZero K] [TopologicalSpace K] [ContinuousMul K] {f g : α → K}
/-!
## Groups with a zero

These lemmas apply to a `CommGroupWithZero`; the most familiar case is when `K` is a field. These
are specific to the product setting and do not have a sensible additive analogue.
-/

open Finset in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a388fffe00ac421b88935059d5300a63f90641b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
