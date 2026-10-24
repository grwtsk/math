# karoubi.retractArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbc8b80f15ff9c296d39aeab67309390ba921790da90adf1d338de2b91edd803",
  "kind": "def",
  "lexical_name": "karoubi.retractArrow",
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
  "slug": "karoubi-retractarrow--d79536c8faad29cdfa2c37bc",
  "source": {
    "blob": "b9aa2e0371055eb49c1b3c561920f51fe8f71593",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 79,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reduced/Variantc8ee2ecc48394e1de5aa546c73195302b094750e7cf3ce438be7c797de29b438.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d79536c8faad29cdfa2c37bca121a4a1e0b448075f7f1793fa8d651106a2431b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reduced/Variantc8ee2ecc48394e1de5aa546c73195302b094750e7cf3ce438be7c797de29b438.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbc8b80f15ff9c296d39aeab67309390ba921790da90adf1d338de2b91edd803`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def karoubi.retractArrow (X : A) :
    RetractArrow ((karoubi.π' Λ).app X) ((toKaroubi _).map (Λ.π.app X)) where
  i := Arrow.homMk ⟨ι.map ((karoubi.F' Λ).obj X).p, by simp [← Functor.map_comp]⟩ (𝟙 _)
  r := Arrow.homMk ⟨ι.map ((karoubi.F' Λ).obj X).p, by simp [← Functor.map_comp]⟩ (𝟙 _)
  retract := by
    ext
    · simp [← Functor.map_comp]
    · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reduced/Variantc8ee2ecc48394e1de5aa546c73195302b094750e7cf3ce438be7c797de29b438.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reduced/Variantc8ee2ecc48394e1de5aa546c73195302b094750e7cf3ce438be7c797de29b438.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9aa2e0371055eb49c1b3c561920f51fe8f71593` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
