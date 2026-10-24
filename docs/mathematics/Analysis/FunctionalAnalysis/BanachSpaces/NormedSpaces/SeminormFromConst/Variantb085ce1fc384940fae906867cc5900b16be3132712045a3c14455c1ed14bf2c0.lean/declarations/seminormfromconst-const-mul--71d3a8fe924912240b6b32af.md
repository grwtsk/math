# seminormFromConst_const_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3379bb6a-8862-606f-74d3-783d71cb176b",
  "kind": "theorem",
  "lexical_name": "seminormFromConst_const_mul",
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
  "slug": "seminormfromconst-const-mul--71d3a8fe924912240b6b32af",
  "source": {
    "blob": "a32ad2541890ea991858f572341df3c23b9e3050",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 250,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantb085ce1fc384940fae906867cc5900b16be3132712045a3c14455c1ed14bf2c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71d3a8fe924912240b6b32afb2a70fd03ea3553a854543edc30f26ac34234dbb",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantb085ce1fc384940fae906867cc5900b16be3132712045a3c14455c1ed14bf2c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3379bb6a-8862-606f-74d3-783d71cb176b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem seminormFromConst_const_mul (x : R) :
    seminormFromConst' c f (c * x) =
      seminormFromConst' c f c * seminormFromConst' c f x := by
  have hlim : Tendsto (fun n ↦ seminormFromConst_seq c f x (n + 1)) atTop
      (𝓝 (seminormFromConst' c f x)) := by
    apply (tendsto_seminormFromConst_seq_atTop hc hpm x).comp
      (tendsto_atTop_atTop_of_monotone add_left_mono _)
    rintro n; use n; lia
  rw [seminormFromConst_apply_c hc hpm]
  apply tendsto_nhds_unique (tendsto_seminormFromConst_seq_atTop hc hpm (c * x))
  have hterm : seminormFromConst_seq c f (c * x) =
      fun n ↦ f c * seminormFromConst_seq c f x (n + 1) := by
    simp only [seminormFromConst_seq_def]
    ext n
    ring_nf
    rw [mul_assoc _ (f c), mul_inv_cancel₀ hc, mul_one]
  simpa [hterm] using tendsto_const_nhds.mul hlim

end Ring

section Field

variable {F K : Type*} [NormedField F] [Field K] [Algebra F K]

/-- If `K` is a field, the function `seminormFromConst` is a `RingNorm` on `K`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantb085ce1fc384940fae906867cc5900b16be3132712045a3c14455c1ed14bf2c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantb085ce1fc384940fae906867cc5900b16be3132712045a3c14455c1ed14bf2c0.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a32ad2541890ea991858f572341df3c23b9e3050` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
