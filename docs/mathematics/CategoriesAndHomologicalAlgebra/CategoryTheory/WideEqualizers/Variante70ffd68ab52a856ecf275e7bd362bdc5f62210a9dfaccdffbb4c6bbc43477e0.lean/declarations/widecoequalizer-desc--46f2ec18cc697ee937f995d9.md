# wideCoequalizer.desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e030625ae452f5da954d0d30e0d5aa5ea90672255638a8dbfefd97e507c3073d",
  "kind": "abbrev",
  "lexical_name": "wideCoequalizer.desc",
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
  "slug": "widecoequalizer-desc--46f2ec18cc697ee937f995d9",
  "source": {
    "blob": "7443ea00d719698d25797724dd883ca195b79d1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 735,
    "line": 730,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variante70ffd68ab52a856ecf275e7bd362bdc5f62210a9dfaccdffbb4c6bbc43477e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46f2ec18cc697ee937f995d9442d3c26cee38091f3f28fb17fb8957ac128e83b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variante70ffd68ab52a856ecf275e7bd362bdc5f62210a9dfaccdffbb4c6bbc43477e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e030625ae452f5da954d0d30e0d5aa5ea90672255638a8dbfefd97e507c3073d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 730–735.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev wideCoequalizer.desc [Nonempty J] {W : C} (k : Y ⟶ W) (h : ∀ j₁ j₂, f j₁ ≫ k = f j₂ ≫ k) :
    wideCoequalizer f ⟶ W :=
  colimit.desc (parallelFamily f) (Cotrident.ofπ k h)
#align category_theory.limits.wide_coequalizer.desc CategoryTheory.Limits.wideCoequalizer.desc

@[reassoc (attr := simp 1100)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variante70ffd68ab52a856ecf275e7bd362bdc5f62210a9dfaccdffbb4c6bbc43477e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variante70ffd68ab52a856ecf275e7bd362bdc5f62210a9dfaccdffbb4c6bbc43477e0.lean#L730).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7443ea00d719698d25797724dd883ca195b79d1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
