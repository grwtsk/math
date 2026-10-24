# IsPositive.isPositive_smul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dfeea1d22145aa5e14fe4588b9aa41a4451e4753",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c451eca316c4a4b315258bba9090585fffae97589b48a12c3f9df28859eedbb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9c38367-dc9a-67bd-bbe8-2d5aaa60bf25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2bf8cea-6217-855e-bf52-8fd502439b87",
  "kind": "theorem",
  "lexical_name": "IsPositive.isPositive_smul_iff",
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
  "slug": "ispositive-ispositive-smul-iff--6494a069f21a712cf9d71757",
  "source": {
    "blob": "dfeea1d22145aa5e14fe4588b9aa41a4451e4753",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 150,
    "path": "GRWTSK/Algebra/LinearAlgebra/Positive/Variant7c451eca316c4a4b315258bba9090585fffae97589b48a12c3f9df28859eedbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6494a069f21a712cf9d71757a5e62795b9001cefe90a3068ca6d9e8fb7c48872",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Positive/Variant7c451eca316c4a4b315258bba9090585fffae97589b48a12c3f9df28859eedbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2bf8cea-6217-855e-bf52-8fd502439b87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPositive.isPositive_smul_iff {T : E →ₗ[𝕜] E} (hT : T.IsPositive) (hT' : T ≠ 0) {α : 𝕜} :
    (α • T).IsPositive ↔ 0 ≤ α := by
  refine ⟨fun h ↦ ?_, hT.smul_of_nonneg⟩
  obtain ⟨x, hx⟩ := by simpa only [hT.1 _] using hT.ne_zero_iff.mp hT'
  have := by simpa [inner_smul_right] using h.inner_nonneg_right x
  exact le_of_smul_le_smul_of_pos_right (by simpa) hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Positive/Variant7c451eca316c4a4b315258bba9090585fffae97589b48a12c3f9df28859eedbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Positive/Variant7c451eca316c4a4b315258bba9090585fffae97589b48a12c3f9df28859eedbb.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfeea1d22145aa5e14fe4588b9aa41a4451e4753` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
