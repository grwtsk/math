# four_rectangles_boundary_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "895b733bb679fb6a458800744e769385f6e54f2c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b001dd97-ffc7-beac-ed10-aef3d92af301",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0aa7638f-4602-ea5e-f64d-d36ab05e641e",
  "kind": "theorem",
  "lexical_name": "four_rectangles_boundary_sum",
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
  "slug": "four-rectangles-boundary-sum--0ee086ae72b17ce5761a3675",
  "source": {
    "blob": "895b733bb679fb6a458800744e769385f6e54f2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 170,
    "path": "GRWTSK/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ee086ae72b17ce5761a3675d1a88a444206cf0bbfe01cc96e25ecdc207cd4e3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0aa7638f-4602-ea5e-f64d-d36ab05e641e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem four_rectangles_boundary_sum
    (f : ℂ → ℂ) {a b c d p q r s : ℝ}
    (hab : a ≤ b) (hbc : b ≤ c) (hcd : c ≤ d)
    (hpq : p ≤ q) (hqr : q ≤ r) (hrs : r ≤ s)
    (hBottom : ContinuousOn f
      (closedRectangle (corner a p) (corner d q)))
    (hTop : ContinuousOn f
      (closedRectangle (corner a r) (corner d s)))
    (hLeft : ContinuousOn f
      (closedRectangle (corner a q) (corner b r)))
    (hRight : ContinuousOn f
      (closedRectangle (corner c q) (corner d r))) :
    boundary f a d p s - boundary f b c q r =
      boundary f a d p q + boundary f a d r s +
        boundary f a b q r + boundary f c d q r := by
  have had : a ≤ d := hab.trans (hbc.trans hcd)
  have hps : p ≤ s := hpq.trans (hqr.trans hrs)

  have hq : IntervalIntegrable (fun x : ℝ => f (corner x q)) volume a d :=
    horizontal_intervalIntegrable_of_continuousOn f had Set.right_mem_uIcc hBottom
  have hr : IntervalIntegrable (fun x : ℝ => f (corner x r)) volume a d :=
    horizontal_intervalIntegrable_of_continuousOn f had Set.left_mem_uIcc hTop
  have hqSplit := horizontal_add_three f hab hbc hcd hq
  have hrSplit := horizontal_add_three f hab hbc hcd hr

  have hvapq : IntervalIntegrable (fun y : ℝ => f (corner a y)) volume p q :=
    vertical_intervalIntegrable_of_continuousOn f hpq Set.left_mem_uIcc hBottom
  have hvaqr : IntervalIntegrable (fun y : ℝ => f (corner a y)) volume q r :=
    vertical_intervalIntegrable_of_continuousOn f hqr Set.left_mem_uIcc hLeft
  have hvars : IntervalIntegrable (fun y : ℝ => f (corner a y)) volume r s :=
    vertical_intervalIntegrable_of_continuousOn f hrs Set.left_mem_uIcc hTop
  have haSplit := vertical_add_three f hvapq hvaqr hvars

  have hvdpq : IntervalIntegrable (fun y : ℝ => f (corner d y)) volume p q :=
    vertical_intervalIntegrable_of_continuousOn f hpq Set.right_mem_uIcc hBottom
  have hvdqr : IntervalIntegrable (fun y : ℝ => f (corner d y)) volume q r :=
    vertical_intervalIntegrable_of_continuousOn f hqr Set.right_mem_uIcc hRight
  have hvdrs : IntervalIntegrable (fun y : ℝ => f (corner d y)) volume r s :=
    vertical_intervalIntegrable_of_continuousOn f hrs Set.right_mem_uIcc hTop
  have hdSplit := vertical_add_three f hvdpq hvdqr hvdrs

  unfold boundary
  rw [hqSplit, hrSplit, haSplit, hdSplit]
  abel

/-- Rectangular-hole excision: holomorphy on the four rectangular pieces
between an outer and an inner rectangle identifies their positive boundary
integrals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `895b733bb679fb6a458800744e769385f6e54f2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
