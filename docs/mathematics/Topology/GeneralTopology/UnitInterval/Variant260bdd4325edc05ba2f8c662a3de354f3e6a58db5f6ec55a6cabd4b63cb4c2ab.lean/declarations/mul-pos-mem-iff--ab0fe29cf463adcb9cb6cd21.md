# mul_pos_mem_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fef794d563e11e47a027740fc7a996d332049f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/260bdd4325edc05ba2f8c662a3de354f3e6a58db5f6ec55a6cabd4b63cb4c2ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:562a2f63-3890-ee4a-ad88-00bfa111174b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc5c309c-a8d8-ae4f-2327-d41ac28ff4a9",
  "kind": "theorem",
  "lexical_name": "mul_pos_mem_iff",
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
  "slug": "mul-pos-mem-iff--ab0fe29cf463adcb9cb6cd21",
  "source": {
    "blob": "4fef794d563e11e47a027740fc7a996d332049f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 194,
    "path": "GRWTSK/Topology/GeneralTopology/UnitInterval/Variant260bdd4325edc05ba2f8c662a3de354f3e6a58db5f6ec55a6cabd4b63cb4c2ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab0fe29cf463adcb9cb6cd21d7488d559d951f42dd89e0ea841fd5b5c284c573",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnitInterval/Variant260bdd4325edc05ba2f8c662a3de354f3e6a58db5f6ec55a6cabd4b63cb4c2ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc5c309c-a8d8-ae4f-2327-d41ac28ff4a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_pos_mem_iff {a t : ℝ} (ha : 0 < a) : a * t ∈ I ↔ t ∈ Set.Icc (0 : ℝ) (1 / a) := by
  constructor <;> rintro ⟨h₁, h₂⟩ <;> constructor
  · exact nonneg_of_mul_nonneg_right h₁ ha
  · rwa [le_div_iff₀ ha, mul_comm]
  · exact mul_nonneg ha.le h₁
  · rwa [le_div_iff₀ ha, mul_comm] at h₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnitInterval/Variant260bdd4325edc05ba2f8c662a3de354f3e6a58db5f6ec55a6cabd4b63cb4c2ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnitInterval/Variant260bdd4325edc05ba2f8c662a3de354f3e6a58db5f6ec55a6cabd4b63cb4c2ab.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fef794d563e11e47a027740fc7a996d332049f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
