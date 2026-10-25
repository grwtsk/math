# opow_le_iff_le_log'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a83dcf9e-ac90-0bbd-6422-7b37ba6ab3bb",
  "kind": "theorem",
  "lexical_name": "opow_le_iff_le_log'",
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
  "slug": "opow-le-iff-le-log--cd45fa8b92aad13726b56f89",
  "source": {
    "blob": "111ccab22fac5946e45cc039a818e4f7f3569a5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 355,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variant48c5b97fd54ae41a8779d1275fb1e4caa10c0982c3567c53bdfe7041ed312551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd45fa8b92aad13726b56f8902df7ccffaf38d2617737dbc46504fafc1726b66",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variant48c5b97fd54ae41a8779d1275fb1e4caa10c0982c3567c53bdfe7041ed312551.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a83dcf9e-ac90-0bbd-6422-7b37ba6ab3bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem opow_le_iff_le_log' {b x c : Ordinal} (hb : 1 < b) (hc : c ≠ 0) :
    b ^ c ≤ x ↔ c ≤ log b x := by
  obtain rfl | hx := eq_or_ne x 0
  · rw [log_zero_right, Ordinal.le_zero, Ordinal.le_zero, opow_eq_zero]
    simp [hc, (zero_lt_one.trans hb).ne']
  · exact opow_le_iff_le_log hb hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variant48c5b97fd54ae41a8779d1275fb1e4caa10c0982c3567c53bdfe7041ed312551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variant48c5b97fd54ae41a8779d1275fb1e4caa10c0982c3567c53bdfe7041ed312551.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `111ccab22fac5946e45cc039a818e4f7f3569a5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
