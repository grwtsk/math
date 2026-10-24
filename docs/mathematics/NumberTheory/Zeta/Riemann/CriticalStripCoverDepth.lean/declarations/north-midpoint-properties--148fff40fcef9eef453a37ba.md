# north_midpoint_properties

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f26d0e8-ae6f-bc7c-f5ca-7197cecbd8fc",
  "kind": "lemma",
  "lexical_name": "north_midpoint_properties",
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
  "slug": "north-midpoint-properties--148fff40fcef9eef453a37ba",
  "source": {
    "blob": "7fb26810de85a88a3d8e130575d6766542ff52db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 57,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCoverDepth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:148fff40fcef9eef453a37ba66a1066c1fe87fbaf166a78a4a1221d563cdc2a0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCoverDepth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f26d0e8-ae6f-bc7c-f5ca-7197cecbd8fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma north_midpoint_properties (b : Rectangle) (hb : b.WellFormed)
    (hlong : b.right - b.left ≤ b.top - b.bottom) :
    (b.north ((b.bottom + b.top) / 2)).WellFormed ∧
    (b.north ((b.bottom + b.top) / 2)).Within b ∧
    (b.north ((b.bottom + b.top) / 2)).span ≤ (3 / 4 : ℚ) * b.span := by
  have hx := hb.1
  have hy := hb.2
  dsimp only [north, WellFormed, Within, span]
  refine ⟨⟨?_, ?_⟩, ⟨?_, ?_, ?_, ?_⟩, ?_⟩ <;> linarith

end Rectangle

namespace SquaredCover

/-- Even the proposal's early leaf result is sourced to the actual checked index. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCoverDepth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCoverDepth.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fb26810de85a88a3d8e130575d6766542ff52db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
