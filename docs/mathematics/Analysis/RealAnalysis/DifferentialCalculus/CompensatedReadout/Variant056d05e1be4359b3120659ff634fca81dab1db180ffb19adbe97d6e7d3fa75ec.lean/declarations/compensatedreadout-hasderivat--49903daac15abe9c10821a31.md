# compensatedReadout_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8790afb-ee13-44e9-82cc-c7fd7d06d8cb",
  "kind": "theorem",
  "lexical_name": "compensatedReadout_hasDerivAt",
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
  "slug": "compensatedreadout-hasderivat--49903daac15abe9c10821a31",
  "source": {
    "blob": "695045ae8ebe63c9041be9a02a6912f701f01e56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 172,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49903daac15abe9c10821a311f740eb556e016d4803d53d90c1757992b6648d8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8790afb-ee13-44e9-82cc-c7fd7d06d8cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedReadout_hasDerivAt
    (z : ℝ → H) (K : ℝ → H →L[ℂ] H) (c : ℝ → ℝ)
    (a : ℝ) (zprime : H) (Kprime : H →L[ℂ] H) (cprime : ℝ)
    (hz : HasDerivAt z zprime a) (hK : HasDerivAt K Kprime a)
    (hc : HasDerivAt c cprime a) :
    HasDerivAt (fun s => compensatedReadout (K s) (z s) (c s))
      ((⟪z a, Kprime (z a) + K a zprime⟫_ℂ + ⟪zprime, K a (z a)⟫_ℂ).re + cprime) a := by
  have hKr : HasDerivAt (fun s => (K s).restrictScalars ℝ)
      (Kprime.restrictScalars ℝ) a :=
    (ContinuousLinearMap.restrictScalarsL ℂ H H ℝ ℝ).hasFDerivAt.comp_hasDerivAt a hK
  have hv : HasDerivAt (fun s => K s (z s)) (Kprime (z a) + K a zprime) a :=
    hKr.clm_apply hz
  have hi := hz.inner ℂ hv
  have hr : HasDerivAt (fun s => (⟪z s, K s (z s)⟫_ℂ).re)
      (⟪z a, Kprime (z a) + K a zprime⟫_ℂ + ⟪zprime, K a (z a)⟫_ℂ).re a :=
    Complex.reCLM.hasFDerivAt.comp_hasDerivAt a hi
  exact HasDerivAt.add hr hc

/-- A proved skew evolution gives the exact local signed work, including K′+[K,Ω]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `695045ae8ebe63c9041be9a02a6912f701f01e56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
