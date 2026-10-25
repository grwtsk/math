# generateMeasurableRec_of_omega1_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19ec2aa2-3a6e-57e9-bfe8-57599e9e52e8",
  "kind": "theorem",
  "lexical_name": "generateMeasurableRec_of_omega1_le",
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
  "slug": "generatemeasurablerec-of-omega1-le--513a515d1c44673427fedd01",
  "source": {
    "blob": "5c0cfc018ade57f92b41f98eb28f508d0d353f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 157,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:513a515d1c44673427fedd01735918d2493b25c6050c7a6a4ca704a6e65d5131",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19ec2aa2-3a6e-57e9-bfe8-57599e9e52e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generateMeasurableRec_of_omega1_le (s : Set (Set α)) {i : Ordinal.{v}} (hi : ω₁ ≤ i) :
    generateMeasurableRec s i = generateMeasurableRec s (ω₁ : Ordinal.{v}) := by
  apply (generateMeasurableRec_mono s hi).antisymm'
  rw [← generateMeasurable_eq_rec]
  exact generateMeasurableRec_subset s i

/-- At each step of the inductive construction, the cardinality bound `≤ #s ^ ℵ₀` holds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c0cfc018ade57f92b41f98eb28f508d0d353f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
