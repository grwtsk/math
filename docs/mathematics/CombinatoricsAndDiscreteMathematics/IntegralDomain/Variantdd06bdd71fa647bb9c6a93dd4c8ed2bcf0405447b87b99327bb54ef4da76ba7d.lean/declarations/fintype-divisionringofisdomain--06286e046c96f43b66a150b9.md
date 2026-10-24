# Fintype.divisionRingOfIsDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6e73f9cb5d86d4dafe94e209d53dd04eccbb3ae6b37eeaff0106b5a88941a81",
  "kind": "def",
  "lexical_name": "Fintype.divisionRingOfIsDomain",
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
  "slug": "fintype-divisionringofisdomain--06286e046c96f43b66a150b9",
  "source": {
    "blob": "2dcc73526bb0531fe8db9675b559d976304b62a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 92,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06286e046c96f43b66a150b90d5cab515c8260c354e78bcc2e5e17e63427954b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6e73f9cb5d86d4dafe94e209d53dd04eccbb3ae6b37eeaff0106b5a88941a81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Fintype.divisionRingOfIsDomain (R : Type*) [Ring R] [IsDomain R] [DecidableEq R] [Fintype R] :
    DivisionRing R where
  __ := (‹Ring R›:) -- this also works without the `( :)`, but it's slightly slow
  __ := Fintype.groupWithZeroOfCancel R
  nnqsmul := _
  nnqsmul_def := fun _ _ => rfl
  qsmul := _
  qsmul_def := fun _ _ => rfl

/-- Every finite commutative domain is a field. More generally, commutativity is not required: this
can be found in `Mathlib/RingTheory/LittleWedderburn.lean`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dcc73526bb0531fe8db9675b559d976304b62a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
