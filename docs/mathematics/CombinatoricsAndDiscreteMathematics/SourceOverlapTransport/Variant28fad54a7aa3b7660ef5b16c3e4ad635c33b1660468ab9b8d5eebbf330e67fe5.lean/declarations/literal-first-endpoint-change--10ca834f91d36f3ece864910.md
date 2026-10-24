# literal_first_endpoint_change

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50fd9ddf-1e78-7ac2-f012-0b2d790ac3d3",
  "kind": "theorem",
  "lexical_name": "literal_first_endpoint_change",
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
  "slug": "literal-first-endpoint-change--10ca834f91d36f3ece864910",
  "source": {
    "blob": "fbfe41df2b46edddadd57d6670362b07988997ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 156,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOverlapTransport/Variant28fad54a7aa3b7660ef5b16c3e4ad635c33b1660468ab9b8d5eebbf330e67fe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10ca834f91d36f3ece864910c4e8a791ef644b9bfa92a7bd1a02d857a28ca692",
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

Occurrence: `result:50fd9ddf-1e78-7ac2-f012-0b2d790ac3d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_first_endpoint_change (A B : ℝ) (hA : 1 ≤ A) (hB : 1 ≤ B) :
    synthesis (originalSourceL2 B (lt_of_lt_of_le zero_lt_one hB))
        (longInventory B) (firstAt B) -
      synthesis (originalSourceL2 A (lt_of_lt_of_le zero_lt_one hA))
        (longInventory A) (firstAt A) =
      finiteProfile (originalSourceL2 B (lt_of_lt_of_le zero_lt_one hB) -
          originalSourceL2 A (lt_of_lt_of_le zero_lt_one hA))
        (longInventory A ∩ longInventory B) false false mangoldtCoefficient +
      finiteProfile (originalSourceL2 B (lt_of_lt_of_le zero_lt_one hB))
        (longInventory B \ longInventory A) false false mangoldtCoefficient -
      finiteProfile (originalSourceL2 A (lt_of_lt_of_le zero_lt_one hA))
        (longInventory A \ longInventory B) false false mangoldtCoefficient := by
  unfold firstAt mangoldtCoordinates
  rw [synthesis_endpoint_change]
  simp [finiteProfile]

/-- The distinct literal centered state pays both the source change and the
exact cutoff-driven beta change, together with added and removed labels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceOverlapTransport/Variant28fad54a7aa3b7660ef5b16c3e4ad635c33b1660468ab9b8d5eebbf330e67fe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOverlapTransport/Variant28fad54a7aa3b7660ef5b16c3e4ad635c33b1660468ab9b8d5eebbf330e67fe5.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbfe41df2b46edddadd57d6670362b07988997ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
