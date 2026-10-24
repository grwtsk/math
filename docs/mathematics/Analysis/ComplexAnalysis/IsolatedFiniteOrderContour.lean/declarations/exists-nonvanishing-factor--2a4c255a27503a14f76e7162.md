# exists_nonvanishing_factor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88361d79-d4ef-479d-c6ce-4c32ca3c96ea",
  "kind": "theorem",
  "lexical_name": "exists_nonvanishing_factor",
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
  "slug": "exists-nonvanishing-factor--2a4c255a27503a14f76e7162",
  "source": {
    "blob": "18b494775954f5ce491cdb66df689187be752499",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 59,
    "path": "GRWTSK/Analysis/Complex/IsolatedFiniteOrderContour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a4c255a27503a14f76e7162aa198e62e2c08fea4532699cbc9afdfba7ae4986",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IsolatedFiniteOrderContour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88361d79-d4ef-479d-c6ce-4c32ca3c96ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nonvanishing_factor (f : ℂ → ℂ) (root : ℂ) (m : ℕ) (region : Set ℂ)
    (positiveOrder : 0 < m) (analytic : AnalyticOnNhd ℂ f region)
    (rootMember : root ∈ region) (rootZero : f root = 0)
    (actualOrder : analyticOrderAt f root = (m : ℕ∞))
    (nonzeroAway : ∀ z ∈ region, z ≠ root → f z ≠ 0) :
    ∃ g : ℂ → ℂ, AnalyticOnNhd ℂ g region ∧
      (∀ z ∈ region, g z ≠ 0) ∧ ∀ z, (z - root) ^ m * g z = f z := by
  classical
  obtain ⟨localFactor, localAnalytic, localNonzero, localIdentity⟩ :=
    (analytic root rootMember).analyticOrderAt_eq_natCast.mp actualOrder
  let g := filledFactor f root m (localFactor root)
  have near : g =ᶠ[𝓝 root] localFactor := by
    filter_upwards [localIdentity] with z hz
    by_cases same : z = root
    · subst z
      simp [g, filledFactor]
    · change filledFactor f root m (localFactor root) z = localFactor z
      rw [filledFactor_of_ne f root z (localFactor root) m same]
      simp only [smul_eq_mul] at hz
      rw [hz]
      field_simp [pow_ne_zero m (sub_ne_zero.mpr same)] <;> ring
  have identity : ∀ z, (z - root) ^ m * g z = f z :=
    filledFactor_factorization f root (localFactor root) m positiveOrder rootZero
  refine ⟨g, ?_, ?_, identity⟩
  · intro z hz
    by_cases same : z = root
    · subst z
      exact localAnalytic.congr near.symm
    · have quotient : AnalyticAt ℂ (fun w : ℂ => f w / (w - root) ^ m) z :=
        (analytic z hz).div ((analyticAt_id.sub analyticAt_const).pow m)
          (pow_ne_zero m (sub_ne_zero.mpr same))
      apply quotient.congr
      filter_upwards [isOpen_ne.mem_nhds same] with w hw
      exact (filledFactor_of_ne f root w (localFactor root) m hw).symm
  · intro z hz
    by_cases same : z = root
    · subst z
      simpa [g, filledFactor] using localNonzero
    · intro vanishes
      have h := identity z
      rw [vanishes, mul_zero] at h
      exact nonzeroAway z hz same h.symm

/-- Differentiate the complete order-m factorization before any denominator is cancelled. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IsolatedFiniteOrderContour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IsolatedFiniteOrderContour.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18b494775954f5ce491cdb66df689187be752499` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
