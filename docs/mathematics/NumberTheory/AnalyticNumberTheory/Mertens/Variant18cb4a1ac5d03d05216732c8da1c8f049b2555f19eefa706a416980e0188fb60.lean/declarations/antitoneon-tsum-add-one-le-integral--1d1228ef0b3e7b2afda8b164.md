# AntitoneOn.tsum_add_one_le_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1729b13d-2be9-b295-fcb0-2e30d52808b3",
  "kind": "theorem",
  "lexical_name": "AntitoneOn.tsum_add_one_le_integral",
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
  "slug": "antitoneon-tsum-add-one-le-integral--1d1228ef0b3e7b2afda8b164",
  "source": {
    "blob": "f971697d72fc8ce2f92ecabd68e04bdd83d36a1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 142,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variant18cb4a1ac5d03d05216732c8da1c8f049b2555f19eefa706a416980e0188fb60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d1228ef0b3e7b2afda8b16461f61a5f4d3a382f983c2348fd599f2df762b89c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Mertens/Variant18cb4a1ac5d03d05216732c8da1c8f049b2555f19eefa706a416980e0188fb60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1729b13d-2be9-b295-fcb0-2e30d52808b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AntitoneOn.tsum_add_one_le_integral (anti : AntitoneOn f (Ici 0))
    (integrable : IntegrableOn f (Ioi 0)) (nonneg : ∀ t ∈ Ioi 0, 0 ≤ f t) :
    ∑' (n : ℕ),  f (n + 1 : ℕ) ≤ ∫ x in Ioi 0, f x  := by
  apply Summable.tsum_le_of_sum_range_le
  · exact summable_nat_add_iff _|>.mpr (anti.summable_of_integrable integrable nonneg)
  · exact fun N ↦ (anti.mono Icc_subset_Ici_self).sum_range_le_integral _ integrable nonneg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Mertens/Variant18cb4a1ac5d03d05216732c8da1c8f049b2555f19eefa706a416980e0188fb60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variant18cb4a1ac5d03d05216732c8da1c8f049b2555f19eefa706a416980e0188fb60.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f971697d72fc8ce2f92ecabd68e04bdd83d36a1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
