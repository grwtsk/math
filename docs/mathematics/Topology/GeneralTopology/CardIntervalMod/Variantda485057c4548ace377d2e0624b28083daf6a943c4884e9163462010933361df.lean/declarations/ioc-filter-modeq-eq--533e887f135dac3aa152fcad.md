# Ioc_filter_modEq_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce3c56a7bda0fd21745cff98e788241851d242d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca9c7b88-8cbb-20ec-a7b9-b5101bdac9bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6d23a3d-77a6-2fd3-5d1c-7651e2dce1ca",
  "kind": "lemma",
  "lexical_name": "Ioc_filter_modEq_eq",
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
  "slug": "ioc-filter-modeq-eq--533e887f135dac3aa152fcad",
  "source": {
    "blob": "ce3c56a7bda0fd21745cff98e788241851d242d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 35,
    "path": "GRWTSK/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:533e887f135dac3aa152fcadf37f94efe59db4a932613729821e453ec1f9e376",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6d23a3d-77a6-2fd3-5d1c-7651e2dce1ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ioc_filter_modEq_eq (v : ℤ) :
    {x ∈ Ioc a b | x ≡ v [ZMOD r]} =
    {x ∈ Ioc (a - v) (b - v) | r ∣ x}.map ⟨(· + v), add_left_injective v⟩ := by
  ext x
  simp_rw [mem_map, mem_filter, mem_Ioc, Function.Embedding.coeFn_mk, ← eq_sub_iff_add_eq,
    exists_eq_right, modEq_comm, modEq_iff_dvd, sub_lt_sub_iff_right, sub_le_sub_iff_right]

variable (hr : 0 < r)
include hr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce3c56a7bda0fd21745cff98e788241851d242d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
