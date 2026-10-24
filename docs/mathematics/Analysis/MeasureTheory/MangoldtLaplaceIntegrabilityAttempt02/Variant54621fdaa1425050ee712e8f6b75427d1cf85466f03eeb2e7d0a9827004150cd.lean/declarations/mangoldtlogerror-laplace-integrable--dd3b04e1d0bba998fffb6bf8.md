# mangoldtLogError_laplace_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ccff8cc-edc9-1650-6839-116fdc0075d9",
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
  "slug": "mangoldtlogerror-laplace-integrable--dd3b04e1d0bba998fffb6bf8",
  "source": {
    "blob": "5174f662f8bdcdd806151d0935e3785dcc29e888",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 58,
    "path": "GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant54621fdaa1425050ee712e8f6b75427d1cf85466f03eeb2e7d0a9827004150cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd3b04e1d0bba998fffb6bf84442f21e799cdc91b1ba11df9631be137655d7f7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant54621fdaa1425050ee712e8f6b75427d1cf85466f03eeb2e7d0a9827004150cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ccff8cc-edc9-1650-6839-116fdc0075d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–68.

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

/-- Below the first atom, including every negative t, the correction is gamma-t. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant54621fdaa1425050ee712e8f6b75427d1cf85466f03eeb2e7d0a9827004150cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant54621fdaa1425050ee712e8f6b75427d1cf85466f03eeb2e7d0a9827004150cd.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5174f662f8bdcdd806151d0935e3785dcc29e888` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
