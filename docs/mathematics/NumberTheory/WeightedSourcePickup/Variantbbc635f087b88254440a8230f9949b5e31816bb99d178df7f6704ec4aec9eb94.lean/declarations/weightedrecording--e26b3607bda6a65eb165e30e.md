# weightedRecording

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b3c651c4ab649720b866d414a7695712c28fc62728a8432e301af8719fbebf9",
  "kind": "def",
  "lexical_name": "weightedRecording",
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
  "slug": "weightedrecording--e26b3607bda6a65eb165e30e",
  "source": {
    "blob": "e090029032b0ce8c05231f93d1229884f89758b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 145,
    "path": "GRWTSK/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e26b3607bda6a65eb165e30e2dbef1de8b65fd5874c699b943aa6995549ac774",
  "verification": {
    "reference": "docs/verification/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b3c651c4ab649720b866d414a7695712c28fc62728a8432e301af8719fbebf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def weightedRecording (A t : ℝ) : ℝ :=
  ∑ n ∈ integerInventory A, realMoebius n * pickupWeight A t n

/-- The diagonal energy in this module, with the following exact parameterization.

def diagonalEnergy (A t : ℝ) : ℝ := ∑ n ∈ integerInventory A, realMoebius n ^ 2 * pickupWeight
A t n ^ 2
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e090029032b0ce8c05231f93d1229884f89758b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
