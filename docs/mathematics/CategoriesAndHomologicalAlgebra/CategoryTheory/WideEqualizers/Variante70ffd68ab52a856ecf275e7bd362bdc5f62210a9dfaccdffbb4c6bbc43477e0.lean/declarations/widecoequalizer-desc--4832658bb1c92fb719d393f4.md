# wideCoequalizer.desc'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f36dbe41cfdfeb10e2de91df3c3e339f10f9ded63d58aab047adb9c2bc1f801a",
  "kind": "def",
  "lexical_name": "wideCoequalizer.desc'",
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
  "slug": "widecoequalizer-desc--4832658bb1c92fb719d393f4",
  "source": {
    "blob": "7443ea00d719698d25797724dd883ca195b79d1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 751,
    "line": 744,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variante70ffd68ab52a856ecf275e7bd362bdc5f62210a9dfaccdffbb4c6bbc43477e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4832658bb1c92fb719d393f4694a3f88c0634532be25550eb36f52411029fa26",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variante70ffd68ab52a856ecf275e7bd362bdc5f62210a9dfaccdffbb4c6bbc43477e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f36dbe41cfdfeb10e2de91df3c3e339f10f9ded63d58aab047adb9c2bc1f801a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 744–751.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def wideCoequalizer.desc' [Nonempty J] {W : C} (k : Y ⟶ W) (h : ∀ j₁ j₂, f j₁ ≫ k = f j₂ ≫ k) :
    { l : wideCoequalizer f ⟶ W // wideCoequalizer.π f ≫ l = k } :=
  ⟨wideCoequalizer.desc k h, wideCoequalizer.π_desc _ _⟩
#align category_theory.limits.wide_coequalizer.desc' CategoryTheory.Limits.wideCoequalizer.desc'

/-- Two maps from a wide coequalizer are equal if they are equal when composed with the wide
    coequalizer map -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variante70ffd68ab52a856ecf275e7bd362bdc5f62210a9dfaccdffbb4c6bbc43477e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variante70ffd68ab52a856ecf275e7bd362bdc5f62210a9dfaccdffbb4c6bbc43477e0.lean#L744).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7443ea00d719698d25797724dd883ca195b79d1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
