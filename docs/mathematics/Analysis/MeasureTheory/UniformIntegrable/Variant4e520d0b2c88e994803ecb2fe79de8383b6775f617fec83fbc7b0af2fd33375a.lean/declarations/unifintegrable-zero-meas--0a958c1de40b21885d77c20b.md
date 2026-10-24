# unifIntegrable_zero_meas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fc2f7a3-b2fa-e948-8cb4-38fc08029bed",
  "kind": "theorem",
  "lexical_name": "unifIntegrable_zero_meas",
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
  "slug": "unifintegrable-zero-meas--0a958c1de40b21885d77c20b",
  "source": {
    "blob": "05b804ec4266a0f0d4d53338a30fb2ad9bf4cac9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 156,
    "path": "GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a958c1de40b21885d77c20b605bc91fc26bfeeffbfd8f3806b4616866643c9f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fc2f7a3-b2fa-e948-8cb4-38fc08029bed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unifIntegrable_zero_meas [MeasurableSpace α] {p : ℝ≥0∞} {f : ι → α → β} :
    UnifIntegrable f p (0 : Measure α) :=
  fun ε _ => ⟨1, one_pos, fun i s _ _ => by simp⟩
#align measure_theory.unif_integrable_zero_meas MeasureTheory.unifIntegrable_zero_meas

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05b804ec4266a0f0d4d53338a30fb2ad9bf4cac9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
