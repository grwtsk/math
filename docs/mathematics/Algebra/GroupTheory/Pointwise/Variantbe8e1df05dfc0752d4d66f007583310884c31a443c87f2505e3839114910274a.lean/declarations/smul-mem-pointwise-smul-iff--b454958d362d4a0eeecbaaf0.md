# smul_mem_pointwise_smul_iff₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe137d01-acae-ccce-b0a9-8a6d704bd79e",
  "kind": "theorem",
  "lexical_name": "smul_mem_pointwise_smul_iff₀",
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
  "slug": "smul-mem-pointwise-smul-iff--b454958d362d4a0eeecbaaf0",
  "source": {
    "blob": "309988422c05d0a9a2dbc192d75d079398c8c206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 453,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantbe8e1df05dfc0752d4d66f007583310884c31a443c87f2505e3839114910274a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b454958d362d4a0eeecbaaf04198cc6b215d84b59ef56550ffe6f833662e78cd",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variantbe8e1df05dfc0752d4d66f007583310884c31a443c87f2505e3839114910274a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe137d01-acae-ccce-b0a9-8a6d704bd79e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_mem_pointwise_smul_iff₀ {a : α} (ha : a ≠ 0) (S : AddSubmonoid A) (x : A) :
    a • x ∈ a • S ↔ x ∈ S :=
  smul_mem_smul_set_iff₀ ha (S : Set A) x
#align add_submonoid.smul_mem_pointwise_smul_iff₀ AddSubmonoid.smul_mem_pointwise_smul_iff₀

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variantbe8e1df05dfc0752d4d66f007583310884c31a443c87f2505e3839114910274a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variantbe8e1df05dfc0752d4d66f007583310884c31a443c87f2505e3839114910274a.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `309988422c05d0a9a2dbc192d75d079398c8c206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
