# ofENat_eq_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76c0ecae-b1ed-2560-082b-af80ea485307",
  "kind": "lemma",
  "lexical_name": "ofENat_eq_nat",
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
  "slug": "ofenat-eq-nat--ca16bface8dcd951670b748e",
  "source": {
    "blob": "1d67a6418e3768626bb4f4e76914fcdb4ef8e4ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ENat/Variant8996f87ae849b2604d82a546fb0619be9688acf42ad8528ff4c2f6a58bd95cac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca16bface8dcd951670b748eaa059e3d3cccf459d2327132a32406359c67dbc4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/ENat/Variant8996f87ae849b2604d82a546fb0619be9688acf42ad8528ff4c2f6a58bd95cac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76c0ecae-b1ed-2560-082b-af80ea485307`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma ofENat_eq_nat {m : ℕ∞} {n : ℕ} : (m : Cardinal) = n ↔ m = n := by norm_cast
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/ENat/Variant8996f87ae849b2604d82a546fb0619be9688acf42ad8528ff4c2f6a58bd95cac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ENat/Variant8996f87ae849b2604d82a546fb0619be9688acf42ad8528ff4c2f6a58bd95cac.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d67a6418e3768626bb4f4e76914fcdb4ef8e4ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
