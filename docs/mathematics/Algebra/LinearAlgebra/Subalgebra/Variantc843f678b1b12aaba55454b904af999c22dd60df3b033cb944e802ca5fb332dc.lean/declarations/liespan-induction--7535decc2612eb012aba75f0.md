# lieSpan_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:171b97c9-9ba8-ea53-2927-70ca4cc1bd9e",
  "kind": "theorem",
  "lexical_name": "lieSpan_induction",
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
  "slug": "liespan-induction--7535decc2612eb012aba75f0",
  "source": {
    "blob": "f59bcc61020d6cc33cb77646444b1ea407ed2bdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 718,
    "line": 692,
    "path": "GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variantc843f678b1b12aaba55454b904af999c22dd60df3b033cb944e802ca5fb332dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7535decc2612eb012aba75f02a7fc9b4c4582a430c13609a4900a8a35ea37196",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Subalgebra/Variantc843f678b1b12aaba55454b904af999c22dd60df3b033cb944e802ca5fb332dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:171b97c9-9ba8-ea53-2927-70ca4cc1bd9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 692–718.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lieSpan_induction {p : (x : L) → x ∈ lieSpan R L s → Prop}
    (mem : ∀ (x) (h : x ∈ s), p x (subset_lieSpan h))
    (zero : p 0 (LieSubalgebra.zero_mem _))
    (add : ∀ x y hx hy, p x hx → p y hy → p (x + y) (LieSubalgebra.add_mem _ ‹_› ‹_›))
    (smul : ∀ (a : R) (x hx), p x hx → p (a • x) (LieSubalgebra.smul_mem _ _ ‹_›)) {x}
    (lie : ∀ x y hx hy, p x hx → p y hy → p (⁅x, y⁆) (LieSubalgebra.lie_mem _ ‹_› ‹_›))
    (hx : x ∈ lieSpan R L s) : p x hx := by
  let p : LieSubalgebra R L :=
    { carrier := { x | ∃ hx, p x hx }
      add_mem' := fun ⟨_, hpx⟩ ⟨_, hpy⟩ ↦ ⟨_, add _ _ _ _ hpx hpy⟩
      zero_mem' := ⟨_, zero⟩
      smul_mem' := fun r ↦ fun ⟨_, hpx⟩ ↦ ⟨_, smul r _ _ hpx⟩
      lie_mem' := fun ⟨_, hpx⟩ ⟨_, hpy⟩ ↦ ⟨_, lie _ _ _ _ hpx hpy⟩ }
  exact lieSpan_le (K := p) |>.mpr (fun y hy ↦ ⟨subset_lieSpan hy, mem y hy⟩) hx |>.elim fun _ ↦ id

end LieSpan

end LieSubalgebra

end LieSubalgebra

namespace LieEquiv

variable {R : Type u} {L₁ : Type v} {L₂ : Type w}
variable [CommRing R] [LieRing L₁] [LieRing L₂] [LieAlgebra R L₁] [LieAlgebra R L₂]

/-- An injective Lie algebra morphism is an equivalence onto its range. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Subalgebra/Variantc843f678b1b12aaba55454b904af999c22dd60df3b033cb944e802ca5fb332dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variantc843f678b1b12aaba55454b904af999c22dd60df3b033cb944e802ca5fb332dc.lean#L692).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f59bcc61020d6cc33cb77646444b1ea407ed2bdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
