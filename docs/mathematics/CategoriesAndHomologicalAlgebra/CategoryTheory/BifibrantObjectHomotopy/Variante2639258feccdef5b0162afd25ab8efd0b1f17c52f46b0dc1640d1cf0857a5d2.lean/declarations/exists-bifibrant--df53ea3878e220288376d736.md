# exists_bifibrant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4bf1c1d1-7226-ecc5-4e46-46ad4fe638c5",
  "kind": "lemma",
  "lexical_name": "exists_bifibrant",
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
  "slug": "exists-bifibrant--df53ea3878e220288376d736",
  "source": {
    "blob": "eca4faa69882f8ee95cdfdd4273c2392b95afee0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 245,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Variante2639258feccdef5b0162afd25ab8efd0b1f17c52f46b0dc1640d1cf0857a5d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df53ea3878e220288376d73615d4a22e9a0eae4805f2476d4b16826a0c575377",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Variante2639258feccdef5b0162afd25ab8efd0b1f17c52f46b0dc1640d1cf0857a5d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bf1c1d1-7226-ecc5-4e46-46ad4fe638c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_bifibrant (X : CofibrantObject C) :
    ∃ (Y : BifibrantObject C) (i : X ⟶ BifibrantObject.ιCofibrantObject.obj Y),
      Cofibration (ι.map i) ∧ WeakEquivalence (ι.map i) := by
  let h := MorphismProperty.factorizationData (trivialCofibrations C) (fibrations C)
      (terminal.from X.obj)
  have := isCofibrant_of_cofibration h.i
  have : IsFibrant h.Z := by
    rw [isFibrant_iff_of_isTerminal h.p terminalIsTerminal]
    infer_instance
  exact ⟨BifibrantObject.mk h.Z, homMk h.i, inferInstanceAs (Cofibration h.i),
    inferInstanceAs (WeakEquivalence h.i)⟩

/-- Given `X : CofibrantObject C`, this is a choice of bifibrant resolution of `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Variante2639258feccdef5b0162afd25ab8efd0b1f17c52f46b0dc1640d1cf0857a5d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Variante2639258feccdef5b0162afd25ab8efd0b1f17c52f46b0dc1640d1cf0857a5d2.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eca4faa69882f8ee95cdfdd4273c2392b95afee0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
