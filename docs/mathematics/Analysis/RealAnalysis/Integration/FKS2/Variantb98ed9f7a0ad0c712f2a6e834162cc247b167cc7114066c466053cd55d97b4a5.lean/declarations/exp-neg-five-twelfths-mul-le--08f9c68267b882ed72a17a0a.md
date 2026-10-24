# exp_neg_five_twelfths_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6380b43e-a8ce-5cc2-77a0-19ca30a2d252",
  "kind": "lemma",
  "lexical_name": "exp_neg_five_twelfths_mul_le",
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
  "slug": "exp-neg-five-twelfths-mul-le--08f9c68267b882ed72a17a0a",
  "source": {
    "blob": "4bc63a57afc465f27db885b1686b1f5e58591aef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 793,
    "line": 772,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08f9c68267b882ed72a17a0ad2ef1fe4619db66ab6019b9dd7afad0e22a4d543",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6380b43e-a8ce-5cc2-77a0-19ca30a2d252`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 772–793.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exp_neg_five_twelfths_mul_le
    (t : ℝ) (ht : t ≥ 1000) :
    exp (-(5 / 12 : ℝ) * t) ≤ exp (-(230 : ℝ)) * exp (-(1 / 1000 : ℝ) * t) := by
  rw [← Real.exp_add]
  refine (Real.exp_le_exp).2 ?_
  have hcoef_nonneg : 0 ≤ ((5 / 12 : ℝ) - 1 / 1000) := by norm_num
  have hmul :
      ((5 / 12 : ℝ) - 1 / 1000) * 1000 ≤ ((5 / 12 : ℝ) - 1 / 1000) * t :=
    mul_le_mul_of_nonneg_left ht hcoef_nonneg
  have h230 : (230 : ℝ) ≤ ((5 / 12 : ℝ) - 1 / 1000) * t := by
    have hnum : (230 : ℝ) ≤ ((5 / 12 : ℝ) - 1 / 1000) * 1000 := by norm_num
    exact hnum.trans hmul
  have hneg : -(((5 / 12 : ℝ) - 1 / 1000) * t) ≤ (-230 : ℝ) := by
    exact neg_le_neg h230
  calc
    (-(5 / 12 : ℝ)) * t
        = -(((5 / 12 : ℝ) - 1 / 1000) * t) + (-(1 / 1000 : ℝ) * t) := by
          ring_nf
    _ ≤ (-230 : ℝ) + (-(1 / 1000 : ℝ) * t) := by
        simpa [add_comm, add_left_comm, add_assoc] using
          (add_le_add_right hneg (-(1 / 1000 : ℝ) * t))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean#L772).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bc63a57afc465f27db885b1686b1f5e58591aef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
