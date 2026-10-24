# intCast_strictMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4591ab0-4789-8162-e094-491826804a45",
  "kind": "theorem",
  "lexical_name": "intCast_strictMono",
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
  "slug": "intcast-strictmono--4be1b51822746d4b7e8c50ec",
  "source": {
    "blob": "ab37fd03b7ce9148089f64223ee5c5ae13c3bdf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 386,
    "path": "GRWTSK/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4be1b51822746d4b7e8c50ec095f47b189c06b900cb2259cc94f09f883c34588",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4591ab0-4789-8162-e094-491826804a45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intCast_strictMono : StrictMono (Int.cast : ℤ → α) := by
  obtain ⟨h⟩ : NeZero (1 : α) := inferInstance
  refine strictMono_int_of_lt_succ fun n => (intCast_mono (Int.le_add_one (le_refl _))).lt_of_ne ?_
  grind

end FloorRing

namespace Int

variable [Ring α] [LinearOrder α] [FloorRing α] {a : α}

@[bound]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant40450ea19a7682a3e16ff4ff685d5eaf4967dcaa7a481949564201fde2c6c8e4.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab37fd03b7ce9148089f64223ee5c5ae13c3bdf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
