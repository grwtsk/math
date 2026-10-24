# coeq₃_condition₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ecff234-3476-0a2e-d0b1-101020484a5b",
  "kind": "theorem",
  "lexical_name": "coeq₃_condition₂",
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
  "slug": "coeq-condition--63840218cc2f813a7a7c479b",
  "source": {
    "blob": "c891fe6e95a4d22625d5806faf9b94a2c6d485fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 420,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9dff71b8938ed1acc72764eaf9ad642b03b8d40c4d618e9351d68c6ff84a09bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63840218cc2f813a7a7c479b22120bd43c909229e27b0ac620302ab441a17109",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9dff71b8938ed1acc72764eaf9ad642b03b8d40c4d618e9351d68c6ff84a09bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ecff234-3476-0a2e-d0b1-101020484a5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeq₃_condition₂ {j₁ j₂ : C} (f g h : j₁ ⟶ j₂) :
    g ≫ coeq₃Hom f g h = h ≫ coeq₃Hom f g h := by
  dsimp [coeq₃Hom]
  slice_lhs 2 4 => rw [← Category.assoc, coeq_condition _ _]
  slice_rhs 2 4 => rw [← Category.assoc, coeq_condition _ _]
  slice_lhs 1 3 => rw [← Category.assoc, coeq_condition _ _]
  simp only [Category.assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9dff71b8938ed1acc72764eaf9ad642b03b8d40c4d618e9351d68c6ff84a09bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9dff71b8938ed1acc72764eaf9ad642b03b8d40c4d618e9351d68c6ff84a09bd.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c891fe6e95a4d22625d5806faf9b94a2c6d485fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
