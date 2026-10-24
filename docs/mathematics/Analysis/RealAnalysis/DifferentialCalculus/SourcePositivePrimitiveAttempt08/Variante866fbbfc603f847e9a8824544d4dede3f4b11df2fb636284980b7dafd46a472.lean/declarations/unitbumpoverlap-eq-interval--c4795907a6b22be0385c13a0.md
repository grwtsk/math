# unitBumpOverlap_eq_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ff6acb7-ddec-6c5d-5d9b-0a994c7b1b72",
  "kind": "theorem",
  "lexical_name": "unitBumpOverlap_eq_interval",
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
  "slug": "unitbumpoverlap-eq-interval--c4795907a6b22be0385c13a0",
  "source": {
    "blob": "2e0212aed847f0d97b811cbf6b15233ca1acb04e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 31,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt08/Variante866fbbfc603f847e9a8824544d4dede3f4b11df2fb636284980b7dafd46a472.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4795907a6b22be0385c13a0fba53985bef02bd37e5d205969d9ea7009378ae0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt08/Variante866fbbfc603f847e9a8824544d4dede3f4b11df2fb636284980b7dafd46a472.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ff6acb7-ddec-6c5d-5d9b-0a994c7b1b72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitBumpOverlap_eq_interval {u : ℝ} (hu : u∈Icc (0:ℝ) 2) :
    unitBumpOverlap u=∫ x in (u-1)..1,(1-x^2)^4*(1-(x-u)^2)^4 := by
  have he : (fun x : ℝ => sourceBump x*sourceBump (x-u))=
      (Icc (u-1) 1).indicator (fun x => (1-x^2)^4*(1-(x-u)^2)^4) := by
    funext x
    by_cases hx : x∈Icc (u-1) 1
    · have h1 : x∈Icc (-1:ℝ) 1 := by constructor <;> linarith [hu.1,hx.1,hx.2]
      have h2 : x-u∈Icc (-1:ℝ) 1 := by constructor <;> linarith [hu.1,hu.2,hx.1,hx.2]
      simp [sourceBump,h1,h2,hx]
    · rw [indicator_of_notMem hx]
      by_cases h1 : x∈Icc (-1:ℝ) 1
      · have h2 : x-u∉Icc (-1:ℝ) 1 := by
          intro h2
          exact hx ⟨by linarith [h2.1],h1.2⟩
        simp [sourceBump,h1,h2]
      · simp [sourceBump,h1]
  rw [unitBumpOverlap,he,zeroExtension_integral _ (u-1) 1 (by linarith [hu.2])]

/-- Integrability precedes the finite polynomial evaluation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt08/Variante866fbbfc603f847e9a8824544d4dede3f4b11df2fb636284980b7dafd46a472.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt08/Variante866fbbfc603f847e9a8824544d4dede3f4b11df2fb636284980b7dafd46a472.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e0212aed847f0d97b811cbf6b15233ca1acb04e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
