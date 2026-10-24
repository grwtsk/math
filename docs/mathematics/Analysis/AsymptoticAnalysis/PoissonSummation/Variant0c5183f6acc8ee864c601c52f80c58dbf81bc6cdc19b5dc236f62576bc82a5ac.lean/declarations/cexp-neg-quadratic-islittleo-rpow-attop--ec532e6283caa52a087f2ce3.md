# cexp_neg_quadratic_isLittleO_rpow_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17c70b59-89aa-bdce-d9cd-1de50be87469",
  "kind": "lemma",
  "lexical_name": "cexp_neg_quadratic_isLittleO_rpow_atTop",
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
  "slug": "cexp-neg-quadratic-islittleo-rpow-attop--ec532e6283caa52a087f2ce3",
  "source": {
    "blob": "b309481910fddf6f1f10264dc24e42a82300858d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 57,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant0c5183f6acc8ee864c601c52f80c58dbf81bc6cdc19b5dc236f62576bc82a5ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec532e6283caa52a087f2ce38b734e4138bcf45d3394a996fd26cf000ae6e17c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variant0c5183f6acc8ee864c601c52f80c58dbf81bc6cdc19b5dc236f62576bc82a5ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17c70b59-89aa-bdce-d9cd-1de50be87469`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cexp_neg_quadratic_isLittleO_rpow_atTop {a : ℂ} (ha : a.re < 0) (b : ℂ) (s : ℝ) :
    (fun x : ℝ ↦ cexp (a * x ^ 2 + b * x)) =o[atTop] (· ^ s) := by
  apply Asymptotics.IsLittleO.of_norm_left
  convert! rexp_neg_quadratic_isLittleO_rpow_atTop ha b.re s with x
  simp_rw [Complex.norm_exp, add_re, ← ofReal_pow, mul_comm (_ : ℂ) ↑(_ : ℝ),
      re_ofReal_mul, mul_comm _ (re _)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variant0c5183f6acc8ee864c601c52f80c58dbf81bc6cdc19b5dc236f62576bc82a5ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant0c5183f6acc8ee864c601c52f80c58dbf81bc6cdc19b5dc236f62576bc82a5ac.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b309481910fddf6f1f10264dc24e42a82300858d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
