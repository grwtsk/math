# toPartENat_le_iff_of_le_aleph0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee793971-ccea-5d98-17e8-9324e9960968",
  "kind": "lemma",
  "lexical_name": "toPartENat_le_iff_of_le_aleph0",
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
  "slug": "topartenat-le-iff-of-le-aleph0--5b46ff37c47c6557159d2c41",
  "source": {
    "blob": "b82854d661248cedaa8dab5e76494136770e523a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b46ff37c47c6557159d2c41d33ddff6381e2ef64f254f6598b3dfe210bfdc51",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee793971-ccea-5d98-17e8-9324e9960968`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toPartENat_le_iff_of_le_aleph0 {c c' : Cardinal} (h : c ≤ ℵ₀) :
    toPartENat c ≤ toPartENat c' ↔ c ≤ c' := by
  lift c to ℕ∞ using h
  simp_rw [← partENatOfENat_toENat, toENat_ofENat, enat_gc _,
   ← PartENat.withTopOrderIso.symm.le_iff_le, PartENat.ofENat_le, map_le_map_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b82854d661248cedaa8dab5e76494136770e523a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
