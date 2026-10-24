# measureOfNegatives

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77591eee9d3f25e6473d3c6a08c411eb1ab78c404af25c7b839f5fc05faad811",
  "kind": "def",
  "lexical_name": "measureOfNegatives",
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
  "slug": "measureofnegatives--bf09a85f4209fe7f9d1aa284",
  "source": {
    "blob": "d35ce7228c562473fe663a5734df636fd62216c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 343,
    "path": "GRWTSK/Analysis/MeasureTheory/Hahn/Variant35809e13841c49626140d191acbbbe9408a080bff957ca1960a6a7eb5d6aae62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf09a85f4209fe7f9d1aa2842c5ac31a5fedf49861f9b6911c377dcf5392f666",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Hahn/Variant35809e13841c49626140d191acbbbe9408a080bff957ca1960a6a7eb5d6aae62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77591eee9d3f25e6473d3c6a08c411eb1ab78c404af25c7b839f5fc05faad811`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def measureOfNegatives (s : SignedMeasure α) : Set ℝ :=
  s '' { B | MeasurableSet B ∧ s ≤[B] 0 }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Hahn/Variant35809e13841c49626140d191acbbbe9408a080bff957ca1960a6a7eb5d6aae62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Hahn/Variant35809e13841c49626140d191acbbbe9408a080bff957ca1960a6a7eb5d6aae62.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d35ce7228c562473fe663a5734df636fd62216c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
