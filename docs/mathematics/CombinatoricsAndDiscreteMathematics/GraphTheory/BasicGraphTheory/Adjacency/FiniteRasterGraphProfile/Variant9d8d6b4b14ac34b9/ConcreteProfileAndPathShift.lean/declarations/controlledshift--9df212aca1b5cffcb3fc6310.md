# controlledShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9269a514ca2e2d6d1830bd0ffffba1a4c73c1f88089732666b19e324584ff90b",
  "kind": "def",
  "lexical_name": "controlledShift",
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
  "slug": "controlledshift--9df212aca1b5cffcb3fc6310",
  "source": {
    "blob": "d2f3aba83ea9fe6d126922b345468d5d307d71b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 133,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ConcreteProfileAndPathShift.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9df212aca1b5cffcb3fc631078b91863bdbcbbec8f7a78ad79db4d405b96b78f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ConcreteProfileAndPathShift.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9269a514ca2e2d6d1830bd0ffffba1a4c73c1f88089732666b19e324584ff90b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def controlledShift : ControlledDigitalSurgery (semantics 1 3) shiftCut where
  repair := shiftRepair
  foregroundAdjacency := .edge
  backgroundAdjacency := .vertex
  adjacencyCompatible := by decide
  linkConditionEvidence :=
    ⟨⟨rfl, rfl⟩, shift_interface_nonempty, shift_link_preserved,
      shift_background_link_preserved,
      shift_before_nonbranching,
      shift_after_nonbranching, shift_betti_preserved,
      shift_background_components_preserved⟩
  expectedBettiDelta := fun _ => 0
  bettiDeltaVerified := by
    intro degree
    change Int.ofNat (graphBetti .edge .vertex shiftAfter degree) -
      Int.ofNat (graphBetti .edge .vertex shiftBefore degree) = 0
    rw [← congrFun shift_betti_preserved degree]
    simp
  exactCarrierEvidence := ⟨⟨rfl, rfl⟩, shift_changeSupport⟩
  cubicalManifoldEvidence := ⟨⟨rfl, rfl⟩, shift_after_nonbranching⟩


end BitMatrix.Surgery.CanonicalRaster

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.FiniteRasterGraphProfile.Variant9d8d6b4b14ac34b9
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ConcreteProfileAndPathShift.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ConcreteProfileAndPathShift.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2f3aba83ea9fe6d126922b345468d5d307d71b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
