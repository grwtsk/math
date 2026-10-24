# norm_resolvent_perturbation_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdf9d48707cf9984996c02d232aaa3cd14ed56b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/805948ccf47aae65b030296389067f878d9d5afce83aa50bea22b67e0c179f49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dbb4e580-2948-144e-23fb-f5051add1849",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8860b07-4eee-00df-971a-ffae14621dbc",
  "kind": "theorem",
  "lexical_name": "norm_resolvent_perturbation_le",
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
  "slug": "norm-resolvent-perturbation-le--b5033ce359c3443a643a0aba",
  "source": {
    "blob": "bdf9d48707cf9984996c02d232aaa3cd14ed56b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 244,
    "path": "GRWTSK/Analysis/ComplexAnalysis/RieszCircle/Variant805948ccf47aae65b030296389067f878d9d5afce83aa50bea22b67e0c179f49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5033ce359c3443a643a0abae0cd9fa3a5c2e3741db3f0af65141a5e29339dab",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RieszCircle/Variant805948ccf47aae65b030296389067f878d9d5afce83aa50bea22b67e0c179f49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8860b07-4eee-00df-971a-ffae14621dbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_resolvent_perturbation_le (A B : H →L[ℂ] H) {z : ℂ}
    (hA : z ∈ resolventSet ℂ A) (hB : z ∈ resolventSet ℂ B) :
    ‖resolvent B z - resolvent A z‖ ≤
      ‖resolvent B z‖ * ‖B - A‖ * ‖resolvent A z‖ := by
  rw [perturbation_resolvent_equation hA hB]
  calc
    ‖resolvent B z * (B - A) * resolvent A z‖ ≤
        ‖resolvent B z * (B - A)‖ * ‖resolvent A z‖ := norm_mul_le _ _
    _ ≤ (‖resolvent B z‖ * ‖B - A‖) * ‖resolvent A z‖ :=
      mul_le_mul_of_nonneg_right (norm_mul_le _ _) (norm_nonneg _)

/-- A positive circular contour lying entirely in the resolvent set. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/RieszCircle/Variant805948ccf47aae65b030296389067f878d9d5afce83aa50bea22b67e0c179f49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/RieszCircle/Variant805948ccf47aae65b030296389067f878d9d5afce83aa50bea22b67e0c179f49.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdf9d48707cf9984996c02d232aaa3cd14ed56b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
