# primitiveMissing_fourier_zero_of_coverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39d3daa0-7463-21af-8d7c-603e63a78bf4",
  "kind": "theorem",
  "lexical_name": "primitiveMissing_fourier_zero_of_coverage",
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
  "slug": "primitivemissing-fourier-zero-of-coverage--2d9fc4ead52b8eda101dd88a",
  "source": {
    "blob": "f5a4c670beb8dce56684d1af6473e2b68a71c495",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 219,
    "path": "GRWTSK/Analysis/Fourier/FiniteTracePrimitiveCoverage.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d9fc4ead52b8eda101dd88a6255a691b69211b9851adc2b6c18e5d55a298988",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTracePrimitiveCoverage.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39d3daa0-7463-21af-8d7c-603e63a78bf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitiveMissing_fourier_zero_of_coverage
    (t : TraceShapedInput γ m) (u : FinitePrimitiveUniverse t)
    (c : FiniteFourierSupportCertificate t)
    (hcover : CoversContributingCandidates t u c.radius)
    (M : ℕ) (a : γ × ℕ)
    (ha : a ∈ primitiveMissingSources t u M) :
    t.fourierTest ((a.2 : ℝ) * t.length a.1) = 0 := by
  rcases (mem_primitiveMissingSources_iff t u M a).mp ha with
    ⟨hU, hmiss, hn, _⟩
  have hlong : c.radius < t.length a.1 := by
    by_contra hnot
    have hle : t.length a.1 ≤ c.radius := le_of_not_gt hnot
    exact hmiss (hcover a.1 hU hle)
  have hnReal : (1 : ℝ) ≤ (a.2 : ℝ) := by exact_mod_cast hn
  have hlen : 0 ≤ t.length a.1 := le_of_lt (u.length_pos a.1 hU)
  have hiterate : t.length a.1 ≤ (a.2 : ℝ) * t.length a.1 := by
    calc
      t.length a.1 = (1 : ℝ) * t.length a.1 := by ring
      _ ≤ (a.2 : ℝ) * t.length a.1 :=
        mul_le_mul_of_nonneg_right hnReal hlen
  exact c.vanish_above _ (hlong.trans_le hiterate)

/-- The independent finite missing-primitive L1 budget vanishes under
explicit finite-universe coverage and Fourier support. It does NOT
make the universe complete among all geodesics on a surface. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTracePrimitiveCoverage.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/FiniteTracePrimitiveCoverage.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5a4c670beb8dce56684d1af6473e2b68a71c495` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
