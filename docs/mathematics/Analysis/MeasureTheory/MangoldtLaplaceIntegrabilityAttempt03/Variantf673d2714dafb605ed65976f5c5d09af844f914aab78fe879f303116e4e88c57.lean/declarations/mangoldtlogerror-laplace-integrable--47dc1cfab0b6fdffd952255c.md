# mangoldtLogError_laplace_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a6c79c5-5993-d44b-4653-10164d809a9f",
  "kind": "theorem",
  "lexical_name": "mangoldtLogError_laplace_integrable",
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
  "slug": "mangoldtlogerror-laplace-integrable--47dc1cfab0b6fdffd952255c",
  "source": {
    "blob": "81ee3e398079a8b2f776f1be0c83d3099eedfa50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 59,
    "path": "GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variantf673d2714dafb605ed65976f5c5d09af844f914aab78fe879f303116e4e88c57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47dc1cfab0b6fdffd952255c7e213bfe95cd04a31dc90200e26e2038c5a52ea4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variantf673d2714dafb605ed65976f5c5d09af844f914aab78fe879f303116e4e88c57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a6c79c5-5993-d44b-4653-10164d809a9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtLogError_laplace_integrable {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun t : ℝ => Complex.exp (-z*(t:ℂ))*(mangoldtLogError t:ℂ))
      (Ioi 0) := by
  have h := (centeredMangoldtError_laplace_integrable hz).sub
    ((integrableOn_exp_mul_complex_Ioi (a:=-z) (by simpa using hz) 0).mul_const
      (Real.eulerMascheroniConstant:ℂ))
  convert! h using 1
  funext t
  simp only [Pi.sub_apply,Complex.ofReal_add,mul_add,add_sub_cancel_right]


/-- Genuine integrability of the retained continuous linear compensation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variantf673d2714dafb605ed65976f5c5d09af844f914aab78fe879f303116e4e88c57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variantf673d2714dafb605ed65976f5c5d09af844f914aab78fe879f303116e4e88c57.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81ee3e398079a8b2f776f1be0c83d3099eedfa50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
