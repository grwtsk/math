# oscillationWithin_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21da2b91-814a-06bd-5232-a17da11c8ded",
  "kind": "theorem",
  "lexical_name": "oscillationWithin_eq_zero",
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
  "slug": "oscillationwithin-eq-zero--584da2c0bd2e53f2a489a02b",
  "source": {
    "blob": "8742b162cd95ea64975d01991e225082f4786617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 68,
    "path": "GRWTSK/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:584da2c0bd2e53f2a489a02bb71e567fb54a13fef8d58fca7e176de7f41e8370",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21da2b91-814a-06bd-5232-a17da11c8ded`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oscillationWithin_eq_zero [TopologicalSpace E] {f : E → F} {D : Set E}
    {x : E} (hf : ContinuousWithinAt f D x) : oscillationWithin f D x = 0 := by
  rw [← nonpos_iff_eq_zero]
  refine _root_.le_of_forall_pos_le_add fun ε hε ↦ ?_
  rw [zero_add]
  have : eball (f x) (ε / 2) ∈ (𝓝[D] x).map f :=
    hf <| eball_mem_nhds _ (by simp [ne_of_gt hε])
  refine (biInf_le ediam this).trans (le_of_le_of_eq ediam_eball_le ?_)
  exact (ENNReal.mul_div_cancel (by simp) (by simp))

end ContinuousWithinAt

namespace ContinuousAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8742b162cd95ea64975d01991e225082f4786617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
