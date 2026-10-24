# discharges

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b069dd21e63c7375203cb54be5532fe9b2729b4471fec7bc450199103ed8eeee",
  "kind": "def",
  "lexical_name": "discharges",
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
  "slug": "discharges--6bb4e09deed2d2c040a0be97",
  "source": {
    "blob": "96f43d34978f0cebe2d7f20d9ba2ac831564a84e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 234,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Assumptions/Variant2bee5c9aaa1b40ca21bf76563d0ed7a960a07cfbb01526f0671f4e029cd51752.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bb4e09deed2d2c040a0be974ea661d04a2526fe31efe98c6f7183fc0004f620",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Assumptions/Variant2bee5c9aaa1b40ca21bf76563d0ed7a960a07cfbb01526f0671f4e029cd51752.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b069dd21e63c7375203cb54be5532fe9b2729b4471fec7bc450199103ed8eeee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def discharges : DischargeInventory proposal Finset.univ := by
  intro index _
  by_cases equal : index = 0
  · subst index
    exact ⟨11, square_certificate⟩
  · have equalOne : index = 1 := by omega
    subst index
    exact ⟨12, positive_certificate⟩

/-- The accepted dependent replay is later than its proposal and both proofs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Assumptions/Variant2bee5c9aaa1b40ca21bf76563d0ed7a960a07cfbb01526f0671f4e029cd51752.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Assumptions/Variant2bee5c9aaa1b40ca21bf76563d0ed7a960a07cfbb01526f0671f4e029cd51752.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96f43d34978f0cebe2d7f20d9ba2ac831564a84e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
