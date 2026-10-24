# conj_riemannZeta_conj_aux1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34ef8573-69ed-97b2-09d0-94b55650c26b",
  "kind": "lemma",
  "lexical_name": "conj_riemannZeta_conj_aux1",
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
  "slug": "conj-riemannzeta-conj-aux1--8f53eff8b15e79f6190c3b47",
  "source": {
    "blob": "7cf0dc9a7c8bd92c9bd8a7a8920b342d621c0bb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variante123daa04e436efe356b630c03a454d381fe23ad7c7a9ac9a6992845e83a54fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f53eff8b15e79f6190c3b47b108d1cc22bcfeafe3a729a3534ebb37d5a85be2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variante123daa04e436efe356b630c03a454d381fe23ad7c7a9ac9a6992845e83a54fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34ef8573-69ed-97b2-09d0-94b55650c26b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma conj_riemannZeta_conj_aux1 (s : ℂ) (hs : 1 < s.re) :
    conj (riemannZeta (conj s)) = riemannZeta s := by
  rw [zeta_eq_tsum_one_div_nat_add_one_cpow hs]
  rw [zeta_eq_tsum_one_div_nat_add_one_cpow (by simpa)]
  rw [Complex.conj_tsum]
  congr
  ext n
  have h1 : n + 1 ≠ 0 := by linarith
  have h2 : (n : ℂ) + 1 ≠ 0 := by exact_mod_cast h1
  rw [Complex.cpow_def_of_ne_zero h2, Complex.cpow_def_of_ne_zero h2, RCLike.conj_div, map_one,
    ← Complex.exp_conj, map_mul, Complex.conj_conj]
  congr 2
  rw [show (↑n + 1 : ℂ) = ↑((n + 1 : ℕ) : ℕ) from by push_cast; ring,
    ← Complex.natCast_log, Complex.conj_ofReal]

blueprint_comment /--
% TODO: Submit this and the following corollaries to Mathlib.
-/
@[blueprint
  (title := "conj-riemannZeta-conj")
  (statement := /--
    Conjugation symmetry of the Riemann zeta function. Let $s \in \mathbb{C}$. Then
    $$\overline{\zeta(\overline{s})} = \zeta(s).$$
  -/)
  (proof := /--
    By the previous lemma, the two sides are equal on the half-plane
    $\{s \in \mathbb{C} : \Re(s) > 1\}$. Then, by analytic continuation, they are equal on the
    whole complex plane.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variante123daa04e436efe356b630c03a454d381fe23ad7c7a9ac9a6992845e83a54fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variante123daa04e436efe356b630c03a454d381fe23ad7c7a9ac9a6992845e83a54fb.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cf0dc9a7c8bd92c9bd8a7a8920b342d621c0bb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
