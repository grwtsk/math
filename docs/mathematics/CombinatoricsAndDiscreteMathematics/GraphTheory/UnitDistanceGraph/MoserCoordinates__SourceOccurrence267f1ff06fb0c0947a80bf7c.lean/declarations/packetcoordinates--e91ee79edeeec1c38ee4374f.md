# packetCoordinates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32299c4e045b0ed7aec3e666c8abfc28e502568a1c703b92058021812254810b",
  "kind": "def",
  "lexical_name": "packetCoordinates",
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
  "slug": "packetcoordinates--e91ee79edeeec1c38ee4374f",
  "source": {
    "blob": "db172f71543d287f68c50be6c2bb26a905b971a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 14,
    "path": "GRWTSK/Combinatorics/GraphTheory/UnitDistanceGraph/MoserCoordinates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e91ee79edeeec1c38ee4374fa8647a34619650a7d5094b08ba584d751ad6e1a8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserCoordinates__SourceOccurrence267f1ff06fb0c0947a80bf7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32299c4e045b0ed7aec3e666c8abfc28e502568a1c703b92058021812254810b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def packetCoordinates : Fin 7 → ℝ × ℝ := ![
  (0, 0),
  ((1 / 2 : ℝ) * (Real.sqrt 3), (1 / 2 : ℝ)),
  ((1 / 2 : ℝ) * (Real.sqrt 3), (-1 / 2 : ℝ)),
  ((1 : ℝ) * (Real.sqrt 3), 0),
  ((5 / 12 : ℝ) * (Real.sqrt 3) + (-1 / 12 : ℝ) * (Real.sqrt 11),
    (5 / 12 : ℝ) + (1 / 12 : ℝ) * (Real.sqrt 3 * Real.sqrt 11)),
  ((5 / 12 : ℝ) * (Real.sqrt 3) + (1 / 12 : ℝ) * (Real.sqrt 11),
    (-5 / 12 : ℝ) + (1 / 12 : ℝ) * (Real.sqrt 3 * Real.sqrt 11)),
  ((5 / 6 : ℝ) * (Real.sqrt 3), (1 / 6 : ℝ) * (Real.sqrt 3 * Real.sqrt 11))]

/-- The reader's exact coordinate table is the source-pinned complex point map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserCoordinates__SourceOccurrence267f1ff06fb0c0947a80bf7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/GraphTheory/UnitDistanceGraph/MoserCoordinates.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db172f71543d287f68c50be6c2bb26a905b971a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
