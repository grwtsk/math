# L2_analyticAt'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c011999da1dd9eabfb77cb1ac6ab523a4f6b0e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/deea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:63ca1313-fa8c-ccfb-6b38-cf7614624f83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d382eb85-bbd3-4914-ceb5-e397099bff0c",
  "kind": "theorem",
  "lexical_name": "L2_analyticAt'",
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
  "slug": "l2-analyticat--939f931afe7dd08142a99ec3",
  "source": {
    "blob": "1c011999da1dd9eabfb77cb1ac6ab523a4f6b0e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 216,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:939f931afe7dd08142a99ec3fb0762f40219c0546d6a14d975ac0b5580be6e41",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d382eb85-bbd3-4914-ceb5-e397099bff0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem L2_analyticAt' {s : ℂ} (h1 : Gammaℝ (1 - s) ≠ 0) (h0 : Gammaℝ s ≠ 0) : AnalyticAt ℂ L2 s := by
  have e : L2 = fun z => -(1/2) * (deriv chiFE z / chiFE z) := by
    funext z; rw [L2, logDeriv_apply]
  rw [e]
  exact analyticAt_const.mul ((chiFE_analyticAt' h1).deriv.div (chiFE_analyticAt' h1) (chiFE_ne_zero' h1 h0))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c011999da1dd9eabfb77cb1ac6ab523a4f6b0e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
