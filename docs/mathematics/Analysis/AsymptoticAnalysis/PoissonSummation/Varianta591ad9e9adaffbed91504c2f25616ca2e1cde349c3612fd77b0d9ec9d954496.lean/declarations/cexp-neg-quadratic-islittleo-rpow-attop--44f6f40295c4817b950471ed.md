# cexp_neg_quadratic_isLittleO_rpow_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83a248e8ac8228e59429f41d51b72a9b373575dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a8e8383-5a21-90a8-1120-41f094994536",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65adc19c-aff1-c40b-f89d-2ba28974b475",
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
  "slug": "cexp-neg-quadratic-islittleo-rpow-attop--44f6f40295c4817b950471ed",
  "source": {
    "blob": "83a248e8ac8228e59429f41d51b72a9b373575dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 46,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44f6f40295c4817b950471edc73e07f54838d617eaa2c2086723306f8b1f6129",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PoissonSummation/Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65adc19c-aff1-c40b-f89d-2ba28974b475`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cexp_neg_quadratic_isLittleO_rpow_atTop {a : ℂ} (ha : a.re < 0) (b : ℂ) (s : ℝ) :
    (fun x : ℝ ↦ cexp (a * x ^ 2 + b * x)) =o[atTop] (· ^ s) := by
  apply Asymptotics.IsLittleO.of_norm_left
  convert rexp_neg_quadratic_isLittleO_rpow_atTop ha b.re s with x
  simp_rw [Complex.norm_exp, add_re, ← ofReal_pow, mul_comm (_ : ℂ) ↑(_ : ℝ),
      re_ofReal_mul, mul_comm _ (re _)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PoissonSummation/Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83a248e8ac8228e59429f41d51b72a9b373575dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
