# secondIncrement_synthesis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6adf9de1-abf1-d1bc-54d1-cbf76ff2e439",
  "kind": "theorem",
  "lexical_name": "secondIncrement_synthesis",
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
  "slug": "secondincrement-synthesis--8715c67d77f796f8985c1fd4",
  "source": {
    "blob": "fbfe41df2b46edddadd57d6670362b07988997ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 144,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOverlapTransport/Variant28fad54a7aa3b7660ef5b16c3e4ad635c33b1660468ab9b8d5eebbf330e67fe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8715c67d77f796f8985c1fd432127947ba5a7e6320fea408b695c999cb664a84",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceOverlapTransport/Variant28fad54a7aa3b7660ef5b16c3e4ad635c33b1660468ab9b8d5eebbf330e67fe5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6adf9de1-abf1-d1bc-54d1-cbf76ff2e439`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem secondIncrement_synthesis (q : ComplexL2) (A B : ℝ) :
    synthesis q (longInventory B) (secondIncrement A B) =
      finiteProfile q (longInventory A ∩ longInventory B) false false
        (fun m => centeredCoefficient (vaughanCutoff B) m -
          centeredCoefficient (vaughanCutoff A) m) +
        finiteProfile q (longInventory B \ longInventory A) false false
          (centeredCoefficient (vaughanCutoff B)) := by
  unfold secondIncrement secondAt transportAt centeredCoordinates
  exact synthesis_coefficient_increment q _ _ false false _ _

/-- The literal normalized Mangoldt-state change keeps the actual q_B-q_A,
new arithmetic rows and removed arithmetic rows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceOverlapTransport/Variant28fad54a7aa3b7660ef5b16c3e4ad635c33b1660468ab9b8d5eebbf330e67fe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOverlapTransport/Variant28fad54a7aa3b7660ef5b16c3e4ad635c33b1660468ab9b8d5eebbf330e67fe5.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbfe41df2b46edddadd57d6670362b07988997ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
