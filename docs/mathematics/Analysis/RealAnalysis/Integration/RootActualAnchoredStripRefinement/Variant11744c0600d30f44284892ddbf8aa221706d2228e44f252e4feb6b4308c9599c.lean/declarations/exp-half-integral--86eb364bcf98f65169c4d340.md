# exp_half_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fb099ee-2021-7c36-3ef9-264e47d4c1d7",
  "kind": "theorem",
  "lexical_name": "exp_half_integral",
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
  "slug": "exp-half-integral--86eb364bcf98f65169c4d340",
  "source": {
    "blob": "d9f44fe7e969adee1e4b1f701a24f2538b6ffb62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant11744c0600d30f44284892ddbf8aa221706d2228e44f252e4feb6b4308c9599c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86eb364bcf98f65169c4d3401c65d39b3ba3750cd79dd455bf28287be9e075f3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant11744c0600d30f44284892ddbf8aa221706d2228e44f252e4feb6b4308c9599c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fb099ee-2021-7c36-3ef9-264e47d4c1d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exp_half_integral (l b : ℝ) (hlb : l ≤ b) :
    (∫ t in l..b, Real.exp (t / 2)) =
      2 * (Real.exp (b / 2) - Real.exp (l / 2)) := by
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => 2 * Real.exp (t / 2))
      (Real.exp (t / 2)) t := by
    convert (((hasDerivAt_id t).div_const 2).exp).const_mul 2 using 1 <;> try rfl
    simp only [id_eq]
    ring
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le hlb
    (by fun_prop : Continuous (fun t : ℝ => 2 * Real.exp (t / 2))).continuousOn
    (fun t _ => hd t)
    ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable _ _)
  simpa only [mul_sub] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant11744c0600d30f44284892ddbf8aa221706d2228e44f252e4feb6b4308c9599c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant11744c0600d30f44284892ddbf8aa221706d2228e44f252e4feb6b4308c9599c.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9f44fe7e969adee1e4b1f701a24f2538b6ffb62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
