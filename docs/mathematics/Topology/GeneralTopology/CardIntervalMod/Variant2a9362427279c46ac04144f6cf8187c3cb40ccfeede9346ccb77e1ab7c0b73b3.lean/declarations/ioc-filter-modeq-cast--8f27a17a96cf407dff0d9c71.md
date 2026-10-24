# Ioc_filter_modEq_cast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14434687-df81-80cc-08a0-ac5888ae85b6",
  "kind": "lemma",
  "lexical_name": "Ioc_filter_modEq_cast",
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
  "slug": "ioc-filter-modeq-cast--8f27a17a96cf407dff0d9c71",
  "source": {
    "blob": "a1cbda0811d7d2875a1239e4f05c8336e4bfb864",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 104,
    "path": "GRWTSK/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f27a17a96cf407dff0d9c711f349e4eac8bdb790f329b94fdaf54e09afe1351",
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

Occurrence: `result:14434687-df81-80cc-08a0-ac5888ae85b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ioc_filter_modEq_cast {v : ℕ} :
    {x ∈ Ioc a b | x ≡ v [MOD r]}.map castEmbedding =
      {x ∈ Ioc (a : ℤ) (b : ℤ) | x ≡ v [ZMOD r]} := by
  ext x
  simp only [mem_map, mem_filter, mem_Ioc, castEmbedding_apply]
  constructor
  · simp_rw [forall_exists_index, ← natCast_modEq_iff]; intro y ⟨h, c⟩; subst c; exact_mod_cast h
  · intro h; lift x to ℕ using (by omega); exact ⟨x, by simp_all [natCast_modEq_iff]⟩

variable (hr : 0 < r)
include hr

/-- There are `⌈(b - v) / r⌉ - ⌈(a - v) / r⌉` numbers congruent to `v` mod `r` in `[a, b)`,
if `a ≤ b`. `Nat` version of `Int.Ico_filter_modEq_card`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1cbda0811d7d2875a1239e4f05c8336e4bfb864` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
