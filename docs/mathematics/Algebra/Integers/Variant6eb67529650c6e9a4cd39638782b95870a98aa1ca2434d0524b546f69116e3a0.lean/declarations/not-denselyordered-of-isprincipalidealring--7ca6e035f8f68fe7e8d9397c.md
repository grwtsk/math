# not_denselyOrdered_of_isPrincipalIdealRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0429c532-45ff-2441-0788-922d3863ff72",
  "kind": "lemma",
  "lexical_name": "not_denselyOrdered_of_isPrincipalIdealRing",
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
  "slug": "not-denselyordered-of-isprincipalidealring--7ca6e035f8f68fe7e8d9397c",
  "source": {
    "blob": "d17018bddc214c68f7feb409987001479c421f4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 225,
    "path": "GRWTSK/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ca6e035f8f68fe7e8d9397c0c7e5d2a160805c9567171dfc2ddc35fc114f946",
  "verification": {
    "reference": "docs/verification/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0429c532-45ff-2441-0788-922d3863ff72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_denselyOrdered_of_isPrincipalIdealRing [IsPrincipalIdealRing O] (hv : Integers v O) :
    ¬ DenselyOrdered (range v) := by
  intro H
  -- nonunits as an ideal isn't defined here, nor shown to be equivalent to `v x < 1`
  set I : Ideal O := {
    carrier := v ∘ algebraMap O F ⁻¹' Iio (1 : Γ₀)
    add_mem' := fun {a b} ha hb ↦ by simpa using map_add_lt v ha hb
    zero_mem' := by simp
    smul_mem' := by
      intro c x
      simp only [mem_preimage, Function.comp_apply, mem_Iio, smul_eq_mul, map_mul]
      intro hx
      exact Right.mul_lt_one_of_le_of_lt (hv.map_le_one c) hx
  }
  obtain ⟨x, hx₁, hx⟩ :
    ∃ x, v (algebraMap O F x) < 1 ∧
      v (algebraMap O F x) ∈ upperBounds (Iio 1 ∩ range (v ∘ algebraMap O F)) := by
    simpa [I, IsGreatest, hv.isPrincipal_iff_exists_isGreatest, ← image_preimage_eq_inter_range]
      using IsPrincipalIdealRing.principal I
  obtain ⟨y, hy, hy₁⟩ : ∃ y, v (algebraMap O F x) < v y ∧ v y < 1 := by
    simpa only [Subtype.exists, Subtype.mk_lt_mk, exists_range_iff, exists_prop]
      using H.dense ⟨v (algebraMap O F x), mem_range_self _⟩ ⟨1, 1, v.map_one⟩ hx₁
  obtain ⟨z, rfl⟩ := hv.exists_of_le_one hy₁.le
  exact hy.not_le <| hx ⟨hy₁, mem_range_self _⟩

end Integers

open Integers in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d17018bddc214c68f7feb409987001479c421f4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
