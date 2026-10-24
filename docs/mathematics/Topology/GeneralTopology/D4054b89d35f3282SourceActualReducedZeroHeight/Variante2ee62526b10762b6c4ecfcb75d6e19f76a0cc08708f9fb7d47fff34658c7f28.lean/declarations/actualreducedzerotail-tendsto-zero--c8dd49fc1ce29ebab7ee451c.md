# actualReducedZeroTail_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f47fb279-7e5a-e08a-e5c2-62f2dd3490ac",
  "kind": "theorem",
  "lexical_name": "actualReducedZeroTail_tendsto_zero",
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
  "slug": "actualreducedzerotail-tendsto-zero--c8dd49fc1ce29ebab7ee451c",
  "source": {
    "blob": "530395eea4d193ecdcc607961096572aec8c02f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/D4054b89d35f3282SourceActualReducedZeroHeight/Variante2ee62526b10762b6c4ecfcb75d6e19f76a0cc08708f9fb7d47fff34658c7f28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8dd49fc1ce29ebab7ee451cd328283cdfc73db378643f7c733cb33ee060a7df",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/D4054b89d35f3282SourceActualReducedZeroHeight/Variante2ee62526b10762b6c4ecfcb75d6e19f76a0cc08708f9fb7d47fff34658c7f28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f47fb279-7e5a-e08a-e5c2-62f2dd3490ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualReducedZeroTail_tendsto_zero :
    Tendsto (fun A : ℝ => actualZeroHeightTail A (actualReducedZeroHeight A))
      atTop (𝓝 0) := by
  obtain ⟨A0,hA0,hbound⟩ := actualReducedZeroTail_norm_bound
  have h3 : Tendsto (fun A : ℝ => (1 / 5 : ℝ) / A^3) atTop (𝓝 0) :=
    tendsto_const_nhds.div_atTop (tendsto_pow_atTop (by norm_num))
  have h4 : Tendsto (fun A : ℝ => (2 : ℝ) / A^4) atTop (𝓝 0) :=
    tendsto_const_nhds.div_atTop (tendsto_pow_atTop (by norm_num))
  have he : Tendsto (fun A : ℝ => actualReducedZeroEnvelope A0 A) atTop (𝓝 0) := by
    simpa [actualReducedZeroEnvelope] using (h3.add h4).const_mul
      (2 * actualZeroTailWeightConstant * A0)
  apply squeeze_zero_norm' _ he
  filter_upwards [eventually_ge_atTop (200 : ℝ)] with A hA
  exact hbound A hA

/-- The original quadratic value equals the entire reduced-height head plus its genuine tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/D4054b89d35f3282SourceActualReducedZeroHeight/Variante2ee62526b10762b6c4ecfcb75d6e19f76a0cc08708f9fb7d47fff34658c7f28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/D4054b89d35f3282SourceActualReducedZeroHeight/Variante2ee62526b10762b6c4ecfcb75d6e19f76a0cc08708f9fb7d47fff34658c7f28.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `530395eea4d193ecdcc607961096572aec8c02f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
