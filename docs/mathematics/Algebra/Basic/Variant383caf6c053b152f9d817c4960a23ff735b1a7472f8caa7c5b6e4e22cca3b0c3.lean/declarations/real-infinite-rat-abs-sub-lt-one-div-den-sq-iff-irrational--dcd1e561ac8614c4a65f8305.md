# Real.infinite_rat_abs_sub_lt_one_div_den_sq_iff_irrational

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4d9a064408c2efa9f5858dc20e54455dc1c3e63",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 274,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7f88bd8-c51d-4760-4cf8-64d0288c3531",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7271f37-94c1-63d2-75a3-ab392955135f",
  "kind": "theorem",
  "lexical_name": "Real.infinite_rat_abs_sub_lt_one_div_den_sq_iff_irrational",
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
  "slug": "real-infinite-rat-abs-sub-lt-one-div-den-sq-iff-irrational--dcd1e561ac8614c4a65f8305",
  "source": {
    "blob": "b4d9a064408c2efa9f5858dc20e54455dc1c3e63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 274,
    "path": "GRWTSK/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcd1e561ac8614c4a65f8305604000eaa3c4559a80554f301cb6837aea921c13",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7271f37-94c1-63d2-75a3-ab392955135f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real.infinite_rat_abs_sub_lt_one_div_den_sq_iff_irrational (ξ : ℝ) :
    {q : ℚ | |ξ - q| < 1 / (q.den : ℝ) ^ 2}.Infinite ↔ Irrational ξ := by
  refine
    ⟨fun h => (irrational_iff_ne_rational ξ).mpr fun a b H => Set.not_infinite.mpr ?_ h,
      Real.infinite_rat_abs_sub_lt_one_div_den_sq_of_irrational⟩
  convert Rat.finite_rat_abs_sub_lt_one_div_den_sq ((a : ℚ) / b) with q
  rw [H, (by (push_cast; rfl) : (1 : ℝ) / (q.den : ℝ) ^ 2 = (1 / (q.den : ℚ) ^ 2 : ℚ))]
  norm_cast

/-!
### Legendre's Theorem on Rational Approximation

We prove **Legendre's Theorem** on rational approximation: If $\xi$ is a real number and
$x/y$ is a rational number such that $|\xi - x/y| < 1/(2y^2)$,
then $x/y$ is a convergent of the continued fraction expansion of $\xi$.

The proof is by induction. However, the induction proof does not work with the
statement as given, since the assumption is too weak to imply the corresponding
statement for the application of the induction hypothesis. This can be remedied
by making the statement slightly stronger. Namely, we assume that $|\xi - x/y| < 1/(y(2y-1))$
when $y \ge 2$ and $-\frac{1}{2} < \xi - x < 1$ when $y = 1$.
-/


section Convergent

namespace Real

open Int

/-!
### Convergents: definition and API lemmas
-/


/-- We give a direct recursive definition of the convergents of the continued fraction
expansion of a real number `ξ`. The main reason for that is that we want to have the
convergents as rational numbers; the versions `(GenContFract.of ξ).convs` and
`(GenContFract.of ξ).convs'` always give something of the same type as `ξ`.
We can then also use dot notation `ξ.convergent n`.
Another minor reason is that this demonstrates that the proof
of Legendre's theorem does not need anything beyond this definition.
We provide a proof that this definition agrees with the other one;
see `Real.convs_eq_convergent`.
(Note that we use the fact that `1/0 = 0` here to make it work for rational `ξ`.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4d9a064408c2efa9f5858dc20e54455dc1c3e63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
