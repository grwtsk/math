# naturality_whiskerLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3068f2f8-e247-e268-f2a0-9335091eccdb",
  "kind": "theorem",
  "lexical_name": "naturality_whiskerLeft",
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
  "slug": "naturality-whiskerleft--0a144504c93dd9d771f6d90f",
  "source": {
    "blob": "1bf6422ed57a04da3acccb60512e86912aff5b31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a144504c93dd9d771f6d90f1d42aea5a201006a9f705e6f2c6b3f1f43acdb76",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3068f2f8-e247-e268-f2a0-9335091eccdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem naturality_whiskerLeft {p : a ⟶ b} {f : b ⟶ c} {g h : c ⟶ d} {pf : a ⟶ c} {pfg : a ⟶ d}
    {η : g ≅ h} (η_f : p ≫ f ≅ pf) (η_fg : pf ≫ g ≅ pfg) (η_fh : pf ≫ h ≅ pfg)
    (ih_η : pf ◁ η ≪≫ η_fh = η_fg) :
    p ◁ (f ◁ η) ≪≫ normalizeIsoComp η_f η_fh = normalizeIsoComp η_f η_fg := by
  rw [← ih_η]
  apply Iso.ext (by simp [← whisker_exchange_assoc])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bf6422ed57a04da3acccb60512e86912aff5b31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
