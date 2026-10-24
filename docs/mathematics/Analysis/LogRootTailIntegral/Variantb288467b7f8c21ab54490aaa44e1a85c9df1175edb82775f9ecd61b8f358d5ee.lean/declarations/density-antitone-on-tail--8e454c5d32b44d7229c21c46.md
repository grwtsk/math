# density_antitone_on_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1c7e507-ae0a-2447-415d-ae426619efae",
  "kind": "theorem",
  "lexical_name": "density_antitone_on_tail",
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
  "slug": "density-antitone-on-tail--8e454c5d32b44d7229c21c46",
  "source": {
    "blob": "89cc35ee7cf2e611a3ef7e3f72b402dcc191cde1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 92,
    "path": "GRWTSK/Analysis/LogRootTailIntegral/Variantb288467b7f8c21ab54490aaa44e1a85c9df1175edb82775f9ecd61b8f358d5ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e454c5d32b44d7229c21c4612c0071a930be67a7ff3c33b5b7a2cbf90e1114d",
  "verification": {
    "reference": "docs/verification/Analysis/LogRootTailIntegral/Variantb288467b7f8c21ab54490aaa44e1a85c9df1175edb82775f9ecd61b8f358d5ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1c7e507-ae0a-2447-415d-ae426619efae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_antitone_on_tail : AntitoneOn density (Set.Ici (2 : ℝ)) := by
  apply antitoneOn_of_deriv_nonpos (convex_Ici 2)
  · intro x hx
    have hxpos : 0 < x := by
      change 2 ≤ x at hx
      linarith
    exact (exact_density_derivative hxpos).continuousAt.continuousWithinAt
  · intro x hx
    have hx3 : 2 ≤ x := Set.mem_Ici.mp (interior_subset hx)
    exact (exact_density_derivative (by linarith)).differentiableAt.differentiableWithinAt
  · intro x hx
    have hx3 : 2 ≤ x := Set.mem_Ici.mp (interior_subset hx)
    rw [(exact_density_derivative (by linarith : 0 < x)).deriv]
    have hl0 : (2 / 3 : ℝ) < Real.log 2 := by linarith [Real.log_two_gt_d9]
    have hl : (2 / 3 : ℝ) < Real.log x :=
      hl0.trans_le (Real.log_le_log (by norm_num) hx3)
    apply div_nonpos_of_nonpos_of_nonneg (by linarith)
    positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/LogRootTailIntegral/Variantb288467b7f8c21ab54490aaa44e1a85c9df1175edb82775f9ecd61b8f358d5ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LogRootTailIntegral/Variantb288467b7f8c21ab54490aaa44e1a85c9df1175edb82775f9ecd61b8f358d5ee.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89cc35ee7cf2e611a3ef7e3f72b402dcc191cde1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
