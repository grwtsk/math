# coeff_im_eq_zero_of_eval_compatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20f0ace4-8549-e294-2328-5078eb759e32",
  "kind": "theorem",
  "lexical_name": "coeff_im_eq_zero_of_eval_compatible",
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
  "slug": "coeff-im-eq-zero-of-eval-compatible--6943afd12e4fda017fd53b21",
  "source": {
    "blob": "736d988a73a4dc785263da7a17e00b7254474e07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 26,
    "path": "GRWTSK/Algebra/Polynomial/ConjugateInterpolation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6943afd12e4fda017fd53b215173b695582f05b8e89958b0d50834050934fd9d",
  "verification": {
    "reference": "docs/verification/Algebra/Polynomial/ConjugateInterpolation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20f0ace4-8549-e294-2328-5078eb759e32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_im_eq_zero_of_eval_compatible
    (nodes : Finset ℂ) (closed : ∀ z ∈ nodes, conj z ∈ nodes)
    (q : Polynomial ℂ) (degree_lt : q.degree < (nodes.card : WithBot ℕ))
    (compatible : ∀ z ∈ nodes, q.eval (conj z) = conj (q.eval z))
    (n : ℕ) : (q.coeff n).im = 0 := by
  have hmap : q.map (starRingEnd ℂ) = q := by
    apply Polynomial.eq_of_degrees_lt_of_eval_finset_eq nodes
      (lt_of_le_of_lt Polynomial.degree_map_le degree_lt) degree_lt
    intro z hz
    have heval := Polynomial.eval_map_apply (p := q) (starRingEnd ℂ) (conj z)
    have hcompatible := compatible (conj z) (closed z hz)
    have hcompatible' : q.eval z = conj (q.eval (conj z)) := by
      simpa only [Complex.conj_conj] using hcompatible
    calc
      (q.map (starRingEnd ℂ)).eval z = conj (q.eval (conj z)) := by
        simpa only [starRingEnd_apply, star_star] using heval
      _ = q.eval z := hcompatible'.symm
  have hcoeff : conj (q.coeff n) = q.coeff n := by
    simpa only [Polynomial.coeff_map, starRingEnd_apply] using
      congrArg (fun p : Polynomial ℂ => p.coeff n) hmap
  exact Complex.conj_eq_iff_im.mp hcoeff

/-- Real-coefficient interpolation on any finite conjugation-stable set.
The empty node set is allowed; the zero polynomial has degree `⊥`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Polynomial/ConjugateInterpolation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Polynomial/ConjugateInterpolation.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `736d988a73a4dc785263da7a17e00b7254474e07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
