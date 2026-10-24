# coordinateOfOffset_flatIdx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb7afc30-0bb3-c1f9-156b-0f10d862200a",
  "kind": "theorem",
  "lexical_name": "coordinateOfOffset_flatIdx",
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
  "slug": "coordinateofoffset-flatidx--d09bd72730ead11ca4f41573",
  "source": {
    "blob": "5336148058930edc5f204edd54ef9d9dde5a9dd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 153,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d09bd72730ead11ca4f41573fc6c4eea38b7460348a7643187c2502cc97cb4c8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb7afc30-0bb3-c1f9-156b-0f10d862200a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coordinateOfOffset_flatIdx
    (i : Fin m) (j : Fin n) :
    coordinateOfOffset (BitMatrix.ArrayBacked.flatIdx i j) = (i, j) := by
  unfold coordinateOfOffset
  rw [← BitMatrix.FiniteField.rowMajorIndexEquiv_apply]
  exact Equiv.symm_apply_apply _ _

/--
The exact row-major implementation offsets whose decoded global coordinates
lie in both components of the formal matrix locus.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5336148058930edc5f204edd54ef9d9dde5a9dd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
