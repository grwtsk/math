# isLeftDerivedFunctor_iff_isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab563aba-818e-de1f-05e6-caa5e5daf02b",
  "kind": "lemma",
  "lexical_name": "isLeftDerivedFunctor_iff_isIso",
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
  "slug": "isleftderivedfunctor-iff-isiso--11f9eedfb9cb6b0597107221",
  "source": {
    "blob": "4c8f015a93724ee934baf8e1a561a121493e8d56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 154,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Derives/Variant28f9b7f4055e2a40ce1b51f73edfb8dba6baba2fc23d18e30ac5150cec305836.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11f9eedfb9cb6b059710722194d531ad3f311354dd58ce99eedeb42472e4a4a3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Derives/Variant28f9b7f4055e2a40ce1b51f73edfb8dba6baba2fc23d18e30ac5150cec305836.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab563aba-818e-de1f-05e6-caa5e5daf02b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLeftDerivedFunctor_iff_isIso :
    LF.IsLeftDerivedFunctor α W₂ ↔ ∀ (X₁ : C₁), IsIso (α.app (Φ.functor.obj X₁)) :=
  ⟨fun _ _ ↦ h.isIso' α _, h.isLeftDerivedFunctor_of_isIso α⟩

end

end Derives

end LocalizerMorphism

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Derives/Variant28f9b7f4055e2a40ce1b51f73edfb8dba6baba2fc23d18e30ac5150cec305836.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Derives/Variant28f9b7f4055e2a40ce1b51f73edfb8dba6baba2fc23d18e30ac5150cec305836.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c8f015a93724ee934baf8e1a561a121493e8d56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
