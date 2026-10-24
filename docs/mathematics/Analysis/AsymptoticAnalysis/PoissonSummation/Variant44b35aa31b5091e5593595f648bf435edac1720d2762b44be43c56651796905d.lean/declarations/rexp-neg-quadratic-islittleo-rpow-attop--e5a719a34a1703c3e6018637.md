# rexp_neg_quadratic_isLittleO_rpow_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3d56b07-3044-3327-ebde-177eb4cafc8f",
  "kind": "lemma",
  "lexical_name": "rexp_neg_quadratic_isLittleO_rpow_atTop",
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
  "slug": "rexp-neg-quadratic-islittleo-rpow-attop--e5a719a34a1703c3e6018637",
  "source": {
    "blob": "8b517a17653a101a911342b9b256504e3330d53b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 42,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant44b35aa31b5091e5593595f648bf435edac1720d2762b44be43c56651796905d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5a719a34a1703c3e601863729b542ca6a35758bd18235a991a0dc9a51e16e1e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variant44b35aa31b5091e5593595f648bf435edac1720d2762b44be43c56651796905d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3d56b07-3044-3327-ebde-177eb4cafc8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rexp_neg_quadratic_isLittleO_rpow_atTop {a : ℝ} (ha : a < 0) (b s : ℝ) :
    (fun x ↦ rexp (a * x ^ 2 + b * x)) =o[atTop] (· ^ s) := by
  suffices (fun x ↦ rexp (a * x ^ 2 + b * x)) =o[atTop] (fun x ↦ rexp (-x)) by
    refine this.trans ?_
    simpa only [neg_one_mul] using isLittleO_exp_neg_mul_rpow_atTop zero_lt_one s
  rw [isLittleO_exp_comp_exp_comp]
  have : (fun x ↦ -x - (a * x ^ 2 + b * x)) = fun x ↦ x * (-a * x - (b + 1)) := by
    ext1 x; ring_nf
  rw [this]
  exact tendsto_id.atTop_mul_atTop₀ <| tendsto_atTop_add_const_right _ _ <|
    tendsto_id.const_mul_atTop (neg_pos.mpr ha)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variant44b35aa31b5091e5593595f648bf435edac1720d2762b44be43c56651796905d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant44b35aa31b5091e5593595f648bf435edac1720d2762b44be43c56651796905d.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b517a17653a101a911342b9b256504e3330d53b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
