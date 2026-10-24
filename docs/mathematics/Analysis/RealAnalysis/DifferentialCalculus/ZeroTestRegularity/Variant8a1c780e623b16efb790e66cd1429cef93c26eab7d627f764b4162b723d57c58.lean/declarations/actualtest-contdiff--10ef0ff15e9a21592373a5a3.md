# actualTest_contDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8417ae7-9e81-74bd-af87-0c0e5fdcef01",
  "kind": "theorem",
  "lexical_name": "actualTest_contDiff",
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
  "slug": "actualtest-contdiff--10ef0ff15e9a21592373a5a3",
  "source": {
    "blob": "1d0e3168293b21b8c4b65add9302bd486f959a4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10ef0ff15e9a21592373a5a39e81c72d56c36797aec849afdf55ed9182eea83b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8417ae7-9e81-74bd-af87-0c0e5fdcef01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualTest_contDiff (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (actualTest A) := by
  rw [actualTest_eq_indicator A hA, contDiff_one_iff_deriv]
  have hd := indicator_hasDerivAt (s := Icc (-A) A)
    (testInterior_hasDerivAt A) (testInterior_frontier A hA)
  refine ⟨fun x ↦ (hd x).differentiableAt, ?_⟩
  have heq : deriv ((Icc (-A) A).indicator (testInterior A)) =
      (Icc (-A) A).indicator (testInteriorDerivative A) := funext fun x ↦ (hd x).deriv
  rw [heq]
  have hc : Continuous (testInteriorDerivative A) := by
    unfold testInteriorDerivative thirdInterior firstInterior
    fun_prop
  exact hc.indicator (fun x hx ↦ (testInterior_frontier A hA x hx).2)

/-- Pointwise support control retains the original closed endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d0e3168293b21b8c4b65add9302bd486f959a4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
