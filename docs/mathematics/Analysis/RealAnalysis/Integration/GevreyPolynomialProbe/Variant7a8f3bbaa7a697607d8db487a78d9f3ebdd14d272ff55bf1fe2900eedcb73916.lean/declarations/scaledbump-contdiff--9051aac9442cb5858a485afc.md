# scaledBump_contDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a5ce14a-d291-fa4a-6230-f749a32ca5d6",
  "kind": "theorem",
  "lexical_name": "scaledBump_contDiff",
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
  "slug": "scaledbump-contdiff--9051aac9442cb5858a485afc",
  "source": {
    "blob": "7fd70d2b0216049f83e279f224d47d95452642c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 60,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GevreyPolynomialProbe/Variant7a8f3bbaa7a697607d8db487a78d9f3ebdd14d272ff55bf1fe2900eedcb73916.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9051aac9442cb5858a485afc4e61dc124b58812a12a2d3b400a89d2028117503",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GevreyPolynomialProbe/Variant7a8f3bbaa7a697607d8db487a78d9f3ebdd14d272ff55bf1fe2900eedcb73916.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a5ce14a-d291-fa4a-6230-f749a32ca5d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledBump_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 2 (scaledBump A) := by
  rw [show (2 : WithTop ℕ∞) = 1 + 1 from rfl, contDiff_succ_iff_deriv]
  refine ⟨fun x ↦ (scaledBump_hasDerivAt hA x).differentiableAt, by simp, ?_⟩
  rw [deriv_scaledBump hA, contDiff_one_iff_deriv]
  refine ⟨fun x ↦ (firstDerivative_hasDerivAt hA x).differentiableAt, ?_⟩
  have heq : deriv (firstDerivative A) = explicitSecondDerivative A :=
    funext fun x ↦ (firstDerivative_hasDerivAt hA x).deriv
  rw [heq]
  exact (secondInterior_continuous A).indicator
    (fun x hx ↦ (firstInterior_frontier hA x hx).2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GevreyPolynomialProbe/Variant7a8f3bbaa7a697607d8db487a78d9f3ebdd14d272ff55bf1fe2900eedcb73916.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GevreyPolynomialProbe/Variant7a8f3bbaa7a697607d8db487a78d9f3ebdd14d272ff55bf1fe2900eedcb73916.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fd70d2b0216049f83e279f224d47d95452642c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
