# odd_error_of_derivatives

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d2b6c37-e1d0-4c46-70ef-63c33f889393",
  "kind": "theorem",
  "lexical_name": "odd_error_of_derivatives",
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
  "slug": "odd-error-of-derivatives--93621a652be09ebc6e35394c",
  "source": {
    "blob": "1061f257eb2233992c7d2bc887372ea68e1995ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 144,
    "path": "GRWTSK/Analysis/Complex/SymmetricPair.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93621a652be09ebc6e35394cc924483fae4b4f7e288165065e15cc90dba29c85",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/SymmetricPair.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d2b6c37-e1d0-4c46-70ef-63c33f889393`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem odd_error_of_derivatives {F P : ℂ → ℂ} {U : Set ℂ} {c d : ℂ} {e : ℝ}
    (hd : d ≠ 0) (hU : Convex ℝ U)
    (hF : ∀ z ∈ U, DifferentiableAt ℂ F z)
    (hP : ∀ z ∈ U, DifferentiableAt ℂ P z)
    (herr : ∀ z ∈ U, ‖deriv F z-deriv P z‖ ≤ e)
    (hp : c+d ∈ U) (hm : c-d ∈ U) : ‖odd F c d-odd P c d‖ ≤ e := by
  have hR : ∀ z ∈ U, DifferentiableAt ℂ (fun w => F w-P w) z :=
    fun z hz => (hF z hz).sub (hP z hz)
  have hD : ∀ z ∈ U, ‖deriv (fun w => F w-P w) z‖ ≤ e := by
    intro z hz
    rw [((hF z hz).hasDerivAt.sub (hP z hz).hasDerivAt).deriv]
    exact herr z hz
  have h := Convex.norm_image_sub_le_of_norm_deriv_le hR hD hU hm hp
  have hdelta : (c+d)-(c-d) = 2*d := by ring
  rw [hdelta] at h
  rw [← odd_sub,odd,norm_div]
  exact (div_le_iff₀ (norm_pos_iff.mpr (denominator_ne_zero hd))).mpr h

/-- This constructor keeps value and derivative estimates separate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/SymmetricPair.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/SymmetricPair.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1061f257eb2233992c7d2bc887372ea68e1995ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
