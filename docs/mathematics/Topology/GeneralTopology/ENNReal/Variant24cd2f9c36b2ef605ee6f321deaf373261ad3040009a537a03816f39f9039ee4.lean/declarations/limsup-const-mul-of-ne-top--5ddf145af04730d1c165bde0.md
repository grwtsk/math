# limsup_const_mul_of_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82cf5da48a02fbf77cc7d3d06792172cb5343e67",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b54f48dd-7626-2732-f7c7-d419fff2a520",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40cca99c-a20a-a526-1ac1-0b89e20c0b04",
  "kind": "theorem",
  "lexical_name": "limsup_const_mul_of_ne_top",
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
  "slug": "limsup-const-mul-of-ne-top--5ddf145af04730d1c165bde0",
  "source": {
    "blob": "82cf5da48a02fbf77cc7d3d06792172cb5343e67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/ENNReal/Variant24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ddf145af04730d1c165bde0cca8c12089fa7cdb56dd9bd6aeeca095687b5258",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ENNReal/Variant24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40cca99c-a20a-a526-1ac1-0b89e20c0b04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem limsup_const_mul_of_ne_top {u : α → ℝ≥0∞} {a : ℝ≥0∞} (ha_top : a ≠ ⊤) :
    (f.limsup fun x : α => a * u x) = a * f.limsup u := by
  by_cases ha_zero : a = 0
  · simp_rw [ha_zero, zero_mul, ← ENNReal.bot_eq_zero]
    exact limsup_const_bot
  let g := fun x : ℝ≥0∞ => a * x
  have hg_bij : Function.Bijective g :=
    Function.bijective_iff_has_inverse.mpr
      ⟨fun x => a⁻¹ * x,
        ⟨fun x => by simp [← mul_assoc, ENNReal.inv_mul_cancel ha_zero ha_top], fun x => by
          simp [← mul_assoc, ENNReal.mul_inv_cancel ha_zero ha_top]⟩⟩
  have hg_mono : StrictMono g :=
    Monotone.strictMono_of_injective (fun _ _ _ => by rwa [mul_le_mul_left ha_zero ha_top]) hg_bij.1
  let g_iso := StrictMono.orderIsoOfSurjective g hg_mono hg_bij.2
  exact (OrderIso.limsup_apply g_iso).symm
#align ennreal.limsup_const_mul_of_ne_top ENNReal.limsup_const_mul_of_ne_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ENNReal/Variant24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ENNReal/Variant24cd2f9c36b2ef605ee6f321deaf373261ad3040009a537a03816f39f9039ee4.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82cf5da48a02fbf77cc7d3d06792172cb5343e67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
