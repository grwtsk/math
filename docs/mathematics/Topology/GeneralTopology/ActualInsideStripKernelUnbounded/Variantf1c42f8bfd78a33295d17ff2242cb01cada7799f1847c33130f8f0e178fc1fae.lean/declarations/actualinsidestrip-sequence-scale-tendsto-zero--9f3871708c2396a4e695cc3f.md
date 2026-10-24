# actualInsideStrip_sequence_scale_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c99e91c9-b715-baff-2db0-e10ab2004701",
  "kind": "theorem",
  "lexical_name": "actualInsideStrip_sequence_scale_tendsto_zero",
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
  "slug": "actualinsidestrip-sequence-scale-tendsto-zero--9f3871708c2396a4e695cc3f",
  "source": {
    "blob": "ab9b106867290aac8aae5a977d23b12b69c91743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 31,
    "path": "GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf1c42f8bfd78a33295d17ff2242cb01cada7799f1847c33130f8f0e178fc1fae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f3871708c2396a4e695cc3f66778c3e5397a90418f5420dbf2d4d98b195023c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf1c42f8bfd78a33295d17ff2242cb01cada7799f1847c33130f8f0e178fc1fae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c99e91c9-b715-baff-2db0-e10ab2004701`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualInsideStrip_sequence_scale_tendsto_zero :
    Tendsto (fun n : ℕ =>
      actualInsideStripSequence n ^ 9 * sourceNormalization (actualInsideStripSequence n) *
        Real.exp (-actualInsideStripSequence n / 2)) atTop (𝓝 (0 : ℝ)) := by
  have hp : 0 < actualInsideStripMode.re := by norm_num [actualInsideStripMode]
  have hh := Complex.continuous_re.continuousAt.tendsto.comp
    ((actualCorrelationAsymptoticScale_tendsto_zero hp).comp sequence_tendsto)
  apply hh.congr'
  exact Filter.Eventually.of_forall fun n => by
    dsimp [actualCorrelationAsymptoticScale]
    rw [actualInsideStripSequence_phase]
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
      mul_zero, sub_zero]

/-- Every real lower threshold is eventually crossed by the literal actual strip kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf1c42f8bfd78a33295d17ff2242cb01cada7799f1847c33130f8f0e178fc1fae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf1c42f8bfd78a33295d17ff2242cb01cada7799f1847c33130f8f0e178fc1fae.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab9b106867290aac8aae5a977d23b12b69c91743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
