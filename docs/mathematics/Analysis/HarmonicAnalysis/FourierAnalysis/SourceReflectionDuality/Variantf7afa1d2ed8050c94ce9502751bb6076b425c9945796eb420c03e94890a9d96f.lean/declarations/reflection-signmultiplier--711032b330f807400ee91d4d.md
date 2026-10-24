# reflection_signMultiplier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55c6d554f80bf785b1566baf0394bf14d13c3585",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7afa1d2ed8050c94ce9502751bb6076b425c9945796eb420c03e94890a9d96f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d03ecb5a-e229-9093-ccee-ce8eb4121e27",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c54405e-1fbf-6147-9132-cb70cff3a34c",
  "kind": "theorem",
  "lexical_name": "reflection_signMultiplier",
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
  "slug": "reflection-signmultiplier--711032b330f807400ee91d4d",
  "source": {
    "blob": "55c6d554f80bf785b1566baf0394bf14d13c3585",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 152,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantf7afa1d2ed8050c94ce9502751bb6076b425c9945796eb420c03e94890a9d96f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:711032b330f807400ee91d4de459e714e0ef0a182e1caf5b516474e09de89a9f",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantf7afa1d2ed8050c94ce9502751bb6076b425c9945796eb420c03e94890a9d96f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c54405e-1fbf-6147-9132-cb70cff3a34c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflection_signMultiplier (f : ComplexL2) :
    reflection (signMultiplier f) = -signMultiplier (reflection f) := by
  apply Lp.ext
  have hzero : ∀ᵐ ξ : ℝ ∂volume, ξ ≠ 0 := by rw [ae_iff]; simp
  filter_upwards [reflection_coe_ae (signMultiplier f),
    (LinearIsometryEquiv.neg ℝ (E:=ℝ)).measurePreserving.quasiMeasurePreserving.ae
      (signMultiplier_coe_ae f),signMultiplier_coe_ae (reflection f),reflection_coe_ae f,
    Lp.coeFn_neg (signMultiplier (reflection f)),hzero] with ξ hR hM hMR hRf hn hξ
  change (signMultiplier f) (-ξ) = signSymbol (-ξ) * f (-ξ) at hM
  change (-signMultiplier (reflection f)) ξ = -(signMultiplier (reflection f) ξ) at hn
  rw [hR,hM,hn,hMR,hRf]
  rw [signSymbol_neg hξ]
  ring

/-- The actual standard Fourier sign duality, on the whole complex Lebesgue L² space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantf7afa1d2ed8050c94ce9502751bb6076b425c9945796eb420c03e94890a9d96f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantf7afa1d2ed8050c94ce9502751bb6076b425c9945796eb420c03e94890a9d96f.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55c6d554f80bf785b1566baf0394bf14d13c3585` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
