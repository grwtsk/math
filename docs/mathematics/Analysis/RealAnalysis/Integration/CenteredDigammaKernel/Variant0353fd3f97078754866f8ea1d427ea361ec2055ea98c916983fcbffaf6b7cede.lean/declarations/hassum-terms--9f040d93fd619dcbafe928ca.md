# hasSum_terms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:247ff532-e4ac-28c2-0f8f-0252466d401b",
  "kind": "theorem",
  "lexical_name": "hasSum_terms",
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
  "slug": "hassum-terms--9f040d93fd619dcbafe928ca",
  "source": {
    "blob": "c41288a3e75bca56cbcb58d317c52f4c27a3d48b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant0353fd3f97078754866f8ea1d427ea361ec2055ea98c916983fcbffaf6b7cede.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f040d93fd619dcbafe928ca36145a3bd2d3cd3942120c2f6ca0a73d211ebb6b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant0353fd3f97078754866f8ea1d427ea361ec2055ea98c916983fcbffaf6b7cede.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:247ff532-e4ac-28c2-0f8f-0252466d401b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_terms {t : ℝ} (ht : 0 < t) (ξ : ℝ) :
    HasSum (fun n : ℕ => term ξ n t) (compensatedKernel ξ t) := by
  have hr : Real.exp (-2*t) < 1 := by
    simpa using Real.exp_lt_exp.mpr (by linarith : -2*t < 0)
  have h := (hasSum_geometric_of_lt_one (Real.exp_pos (-2*t)).le hr).mul_left
    (2*Real.exp (-t/2)*(1-Real.cos (ξ*t)))
  have he : (fun n : ℕ => term ξ n t) =
      (fun n : ℕ => 2*Real.exp (-t/2)*(1-Real.cos (ξ*t))*Real.exp (-2*t)^n) := by
    funext n
    unfold term
    rw [show -((2:ℝ)*n+1/2)*t = -t/2 + (n:ℝ)*(-2*t) by ring,
      Real.exp_add, Real.exp_nat_mul]
    ring
  rw [he]
  convert! h using 1
  unfold compensatedKernel ArchimedeanKernel.kernel
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant0353fd3f97078754866f8ea1d427ea361ec2055ea98c916983fcbffaf6b7cede.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant0353fd3f97078754866f8ea1d427ea361ec2055ea98c916983fcbffaf6b7cede.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c41288a3e75bca56cbcb58d317c52f4c27a3d48b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
