# le_mul_pow_of_radius_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38536766-8152-b575-c554-20c90eb81255",
  "kind": "theorem",
  "lexical_name": "le_mul_pow_of_radius_pos",
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
  "slug": "le-mul-pow-of-radius-pos--c64f669272d173ba9c553b5b",
  "source": {
    "blob": "57ccc08fe35d34400d35e11fbe19643732a90dfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 301,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant1830a515760f7e205786363317724ce1b6c2c10bd4b1d10dd88a369c64a2b65f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c64f669272d173ba9c553b5bff091d038daedba7ad721020afc2ce09705052f5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant1830a515760f7e205786363317724ce1b6c2c10bd4b1d10dd88a369c64a2b65f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38536766-8152-b575-c554-20c90eb81255`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_mul_pow_of_radius_pos (p : FormalMultilinearSeries 𝕜 E F) (h : 0 < p.radius) :
    ∃ (C r : _) (_ : 0 < C) (_ : 0 < r), ∀ n, ‖p n‖ ≤ C * r ^ n := by
  rcases ENNReal.lt_iff_exists_nnreal_btwn.1 h with ⟨r, r0, rlt⟩
  have rpos : 0 < (r : ℝ) := by simp [ENNReal.coe_pos.1 r0]
  rcases norm_le_div_pow_of_pos_of_lt_radius p rpos rlt with ⟨C, Cpos, hCp⟩
  refine ⟨C, r⁻¹, Cpos, by simp only [inv_pos, rpos], fun n => ?_⟩
  rw [inv_pow, ← div_eq_mul_inv]
  exact hCp n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant1830a515760f7e205786363317724ce1b6c2c10bd4b1d10dd88a369c64a2b65f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant1830a515760f7e205786363317724ce1b6c2c10bd4b1d10dd88a369c64a2b65f.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57ccc08fe35d34400d35e11fbe19643732a90dfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
