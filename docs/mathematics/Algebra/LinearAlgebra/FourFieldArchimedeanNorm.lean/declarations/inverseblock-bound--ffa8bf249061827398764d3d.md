# inverseBlock_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9992595-906a-3e83-a15a-3b4cad55778d",
  "kind": "theorem",
  "lexical_name": "inverseBlock_bound",
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
  "slug": "inverseblock-bound--ffa8bf249061827398764d3d",
  "source": {
    "blob": "d25b3131dae04a7c08208227357180db777462ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 91,
    "path": "GRWTSK/Analysis/LinearAlgebra/FourFieldArchimedeanNorm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffa8bf249061827398764d3d9ecbaf38a267a05ac2749d505144f22eb560922e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FourFieldArchimedeanNorm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9992595-906a-3e83-a15a-3b4cad55778d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverseBlock_bound (w : ℚ) (hw : 1 ≤ |w|) (r : Fin 4 → ℚ) (M : ℚ)
    (hM : 0 ≤ M) (hr : ∀ j, |r j| ≤ M) (j : Fin 4) :
    |inverseBlock w r j| ≤ M := by
  have hw0 : 0 < |w| := lt_of_lt_of_le (by norm_num) hw
  have hMw : M ≤ M*|w| := by
    simpa only [mul_one] using mul_le_mul_of_nonneg_left hw hM
  have h0 := hr 0
  have h1 := hr 1
  have h2 := (abs_sub (r 2) (r 1)).trans (add_le_add (hr 2) (hr 1))
  have h3 := (abs_sub (r 3) (r 1)).trans (add_le_add (hr 3) (hr 1))
  fin_cases j
  · change |r 0/(3*w)| ≤ M
    rw [abs_div, abs_mul]
    norm_num
    apply (div_le_iff₀ (by positivity : 0 < 3*|w|)).mpr
    nlinarith
  · change |r 1/w| ≤ M
    rw [abs_div]
    exact (div_le_iff₀ hw0).mpr (h1.trans hMw)
  · change |(r 2-r 1)/(4*w)| ≤ M
    rw [abs_div, abs_mul]
    norm_num
    apply (div_le_iff₀ (by positivity : 0 < 4*|w|)).mpr
    nlinarith
  · change |(r 3-r 1)/(4*w)| ≤ M
    rw [abs_div, abs_mul]
    norm_num
    apply (div_le_iff₀ (by positivity : 0 < 4*|w|)).mpr
    nlinarith

/-- No source-dependent lower bound is assumed: a nonzero INTEGER has size at least one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/FourFieldArchimedeanNorm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LinearAlgebra/FourFieldArchimedeanNorm.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d25b3131dae04a7c08208227357180db777462ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
