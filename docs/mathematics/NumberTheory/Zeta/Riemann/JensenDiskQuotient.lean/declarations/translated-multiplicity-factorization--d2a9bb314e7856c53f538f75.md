# translated_multiplicity_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bda7fcdb-104d-6d2e-e140-27d41bb53f14",
  "kind": "theorem",
  "lexical_name": "translated_multiplicity_factorization",
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
  "slug": "translated-multiplicity-factorization--d2a9bb314e7856c53f538f75",
  "source": {
    "blob": "e11af5969a612ca82162a864d942bfa8b4612722",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 50,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/JensenDiskQuotient.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2a9bb314e7856c53f538f750ac4cb2d26a9320f0668d94ae280471b5cdcbe28",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/JensenDiskQuotient.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bda7fcdb-104d-6d2e-e140-27d41bb53f14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem translated_multiplicity_factorization (c : ℂ) (z : ZeroPoint) :
    ∃ A : ℂ → ℂ, AnalyticAt ℂ A (z.1 - c) ∧ A (z.1 - c) ≠ 0 ∧
      (fun w => riemannZeta (c + w)) =ᶠ[𝓝 (z.1 - c)]
        fun w => (w - (z.1 - c)) ^ multiplicity z * A w := by
  obtain ⟨A, hA, hA0, he⟩ := multiplicity_factorization z
  have hcenter : c + (z.1 - c) = z.1 := by ring
  have hshift : Tendsto (fun w : ℂ => c + w) (𝓝 (z.1 - c)) (𝓝 z.1) := by
    have hcont : Continuous (fun w : ℂ => c + w) := continuous_const.add continuous_id
    simpa only [hcenter] using (hcont.continuousAt (x := z.1 - c)).tendsto
  refine ⟨fun w => A (c + w), ?_, ?_, ?_⟩
  · simpa only [sub_neg_eq_add, sub_eq_add_neg, add_comm, neg_neg] using hA.comp_sub (-c)
  · change A (c + (z.1 - c)) ≠ 0
    rw [hcenter]
    exact hA0
  · filter_upwards [hshift.eventually he] with w hw
    have heq : c + w - z.1 = w - (z.1 - c) := by ring
    simpa only [smul_eq_mul, heq] using hw

/-- Every actual zero in the inner disk is in the original canonical finite inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/JensenDiskQuotient.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/JensenDiskQuotient.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e11af5969a612ca82162a864d942bfa8b4612722` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
