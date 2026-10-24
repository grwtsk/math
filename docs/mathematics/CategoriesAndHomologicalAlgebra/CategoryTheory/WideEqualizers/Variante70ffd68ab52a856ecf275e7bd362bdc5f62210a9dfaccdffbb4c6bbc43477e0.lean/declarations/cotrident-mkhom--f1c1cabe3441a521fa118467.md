# Cotrident.mkHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b45076cd44889a2b2275de5462c962ef166a507bb2e61206f63f3b617b43d79b",
  "kind": "def",
  "lexical_name": "Cotrident.mkHom",
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
  "slug": "cotrident-mkhom--f1c1cabe3441a521fa118467",
  "source": {
    "blob": "7443ea00d719698d25797724dd883ca195b79d1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 535,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variante70ffd68ab52a856ecf275e7bd362bdc5f62210a9dfaccdffbb4c6bbc43477e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1c1cabe3441a521fa1184678c754239377bd1d434ad1eabec913369142ae1fa",
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

Occurrence: `declaration:b45076cd44889a2b2275de5462c962ef166a507bb2e61206f63f3b617b43d79b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cotrident.mkHom [Nonempty J] {s t : Cotrident f} (k : s.pt ⟶ t.pt)
    (w : s.π ≫ k = t.π := by aesop_cat) : s ⟶ t where
  Hom := k
  w := by
    rintro ⟨_ | _⟩
    · simpa using f (Classical.arbitrary J) ≫= w
    · exact w
#align category_theory.limits.cotrident.mk_hom CategoryTheory.Limits.Cotrident.mkHom

/-- To construct an isomorphism between cotridents,
it suffices to give an isomorphism between the cocone points
and check that it commutes with the `π` morphisms.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variante70ffd68ab52a856ecf275e7bd362bdc5f62210a9dfaccdffbb4c6bbc43477e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variante70ffd68ab52a856ecf275e7bd362bdc5f62210a9dfaccdffbb4c6bbc43477e0.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7443ea00d719698d25797724dd883ca195b79d1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
