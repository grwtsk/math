# Ioc_filter_modEq_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca2052ef-6dba-5719-6a4b-d463ecae294f",
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
  "slug": "ioc-filter-modeq-eq--ad6c9b1d3430d883c675a3e1",
  "source": {
    "blob": "a1cbda0811d7d2875a1239e4f05c8336e4bfb864",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 43,
    "path": "GRWTSK/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad6c9b1d3430d883c675a3e1f3bf425958e13522c1b39195a4a0567168723d5b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca2052ef-6dba-5719-6a4b-d463ecae294f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–52.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1cbda0811d7d2875a1239e4f05c8336e4bfb864` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
