# squareTrace_im_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3f80c2d-d44e-b9dd-27b4-3263db5c25b2",
  "kind": "theorem",
  "lexical_name": "squareTrace_im_eq_zero",
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
  "slug": "squaretrace-im-eq-zero--fbfcd4469e8e7ee257da121e",
  "source": {
    "blob": "681311b90019c078ed32a3ff4ddb31d6597704bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 102,
    "path": "GRWTSK/Algebra/Polynomial/SignedRootTrace.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbfcd4469e8e7ee257da121e207ce43a930ba3bd949da48000f7dfc47e6e381f",
  "verification": {
    "reference": "docs/verification/Algebra/Polynomial/SignedRootTrace.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3f80c2d-d44e-b9dd-27b4-3263db5c25b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareTrace_im_eq_zero (nodes : Finset ℂ)
    (hclosed : ∀ z ∈ nodes, conj z ∈ nodes) (weight : ℂ → ℝ)
    (hweightconj : ∀ z ∈ nodes, weight (conj z) = weight z)
    (p : Polynomial ℝ) : (squareTrace nodes weight p).im = 0 := by
  have heval : ∀ z : ℂ, p.eval₂ Complex.ofRealHom (conj z) =
      conj (p.eval₂ Complex.ofRealHom z) := by
    intro z
    induction p using Polynomial.induction_on' with
    | add p q hp hq => simp [hp, hq]
    | monomial n c => simp
  have hconj : conj (squareTrace nodes weight p) = squareTrace nodes weight p := by
    simp only [squareTrace, map_sum, map_mul, map_pow, Complex.conj_ofReal]
    apply Finset.sum_bij (fun z _ => conj z) (fun z hz => hclosed z hz)
    · intro z hz w hw heq
      simpa only [Complex.conj_conj] using congrArg conj heq
    · intro z hz
      exact ⟨conj z, hclosed z hz, Complex.conj_conj z⟩
    · intro z hz
      rw [hweightconj z hz, heval z]
  exact Complex.conj_eq_iff_im.mp hconj

/-- Finite weighted Hermite trace criterion. Strict positivity is required only
on the selected nodes. Empty sets and repeated-root weights are allowed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Polynomial/SignedRootTrace.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Polynomial/SignedRootTrace.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `681311b90019c078ed32a3ff4ddb31d6597704bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
