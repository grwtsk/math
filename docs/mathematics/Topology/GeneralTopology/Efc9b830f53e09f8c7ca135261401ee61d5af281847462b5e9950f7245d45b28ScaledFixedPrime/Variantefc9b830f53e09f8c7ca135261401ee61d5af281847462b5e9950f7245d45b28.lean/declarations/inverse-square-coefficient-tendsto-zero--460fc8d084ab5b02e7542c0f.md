# inverse_square_coefficient_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bd62a36f63bbca81cdc105230a28a94e4d86637a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/efc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a2042ae-d083-9dcc-0005-b3d0a6924824",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:960c16af-2b96-7fe8-94ab-bd5483d57f52",
  "kind": "theorem",
  "lexical_name": "inverse_square_coefficient_tendsto_zero",
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
  "slug": "inverse-square-coefficient-tendsto-zero--460fc8d084ab5b02e7542c0f",
  "source": {
    "blob": "bd62a36f63bbca81cdc105230a28a94e4d86637a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 30,
    "path": "GRWTSK/Topology/GeneralTopology/Efc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28ScaledFixedPrime/Variantefc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:460fc8d084ab5b02e7542c0f66816fdd3001845d6e99977af6e448ce9c47834c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Efc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28ScaledFixedPrime/Variantefc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:960c16af-2b96-7fe8-94ab-bd5483d57f52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inverse_square_coefficient_tendsto_zero :
    Tendsto (fun A : ℝ ↦ 1 / (2 * A ^ 2)) atTop (nhds 0) := by
  have h := ((tendsto_inv_atTop_zero :
    Tendsto (fun A : ℝ ↦ A⁻¹) atTop (nhds 0)).pow 2).const_mul (1 / 2 : ℝ)
  convert h using 1 <;> simp [div_eq_mul_inv, mul_inv_rev, inv_pow, mul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Efc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28ScaledFixedPrime/Variantefc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Efc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28ScaledFixedPrime/Variantefc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd62a36f63bbca81cdc105230a28a94e4d86637a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
