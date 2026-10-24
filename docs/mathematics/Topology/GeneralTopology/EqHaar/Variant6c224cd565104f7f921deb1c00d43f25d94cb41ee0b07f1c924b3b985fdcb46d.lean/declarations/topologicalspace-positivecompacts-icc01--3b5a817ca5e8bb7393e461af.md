# TopologicalSpace.PositiveCompacts.Icc01

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76f9304e32aaf3199c4c086b26611be15ab7ede4e55cb8eda35414e0ff5141e8",
  "kind": "def",
  "lexical_name": "TopologicalSpace.PositiveCompacts.Icc01",
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
  "slug": "topologicalspace-positivecompacts-icc01--3b5a817ca5e8bb7393e461af",
  "source": {
    "blob": "58e8db04a65a8f78caaa702d66a5ebab016edb0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 53,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant6c224cd565104f7f921deb1c00d43f25d94cb41ee0b07f1c924b3b985fdcb46d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b5a817ca5e8bb7393e461af654380b736b25cf9b9839330898fa01a31450d0e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EqHaar/Variant6c224cd565104f7f921deb1c00d43f25d94cb41ee0b07f1c924b3b985fdcb46d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76f9304e32aaf3199c4c086b26611be15ab7ede4e55cb8eda35414e0ff5141e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TopologicalSpace.PositiveCompacts.Icc01 : PositiveCompacts ℝ where
  carrier := Icc 0 1
  isCompact' := isCompact_Icc
  interior_nonempty' := by simp_rw [interior_Icc, nonempty_Ioo, zero_lt_one]

universe u

/-- The set `[0,1]^ι` as a compact set with non-empty interior. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variant6c224cd565104f7f921deb1c00d43f25d94cb41ee0b07f1c924b3b985fdcb46d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variant6c224cd565104f7f921deb1c00d43f25d94cb41ee0b07f1c924b3b985fdcb46d.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58e8db04a65a8f78caaa702d66a5ebab016edb0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
