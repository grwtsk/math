# mangoldtLogError_laplace_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3144d52f-e486-bcad-e3e2-01e64e390b4a",
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
  "slug": "mangoldtlogerror-laplace-integrable--5912b41b8ef53e5e10b388e8",
  "source": {
    "blob": "c0526073b5a857240c4ff184e62799a4cfb3544d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 67,
    "path": "GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variant22c712a837146dfa59c1137519afd335cf79de36a4fee98cfee123d515e824a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5912b41b8ef53e5e10b388e8028b855cfc51b1e7102c61581365d0bb5d7c7dc4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variant22c712a837146dfa59c1137519afd335cf79de36a4fee98cfee123d515e824a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3144d52f-e486-bcad-e3e2-01e64e390b4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–78.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variant22c712a837146dfa59c1137519afd335cf79de36a4fee98cfee123d515e824a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variant22c712a837146dfa59c1137519afd335cf79de36a4fee98cfee123d515e824a5.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0526073b5a857240c4ff184e62799a4cfb3544d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
