# Fork.ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c78914f3c8f8c7734f75e1897f84ebe0d5d2557a223b3f6d3f4da2a54b8a0bf",
  "kind": "def",
  "lexical_name": "Fork.ext",
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
  "slug": "fork-ext--de996a868a985046cd8aabf8",
  "source": {
    "blob": "bdc80ab4d21063a15331c5173d20334ff7a8fd0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 704,
    "line": 698,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantde6548d2be06ed37ed1a29399d4cf37bf9598b6d4dbe8b07246af3c3091786f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de996a868a985046cd8aabf8e7516c557efad5cf6574997502871fb7c8d49863",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantde6548d2be06ed37ed1a29399d4cf37bf9598b6d4dbe8b07246af3c3091786f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c78914f3c8f8c7734f75e1897f84ebe0d5d2557a223b3f6d3f4da2a54b8a0bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 698–704.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Fork.ext {s t : Fork f g} (i : s.pt ≅ t.pt) (w : i.hom ≫ t.ι = s.ι := by aesop_cat) :
    s ≅ t where
  hom := Fork.mkHom i.hom w
  inv := Fork.mkHom i.inv (by rw [← w, Iso.inv_hom_id_assoc])
#align category_theory.limits.fork.ext CategoryTheory.Limits.Fork.ext

/-- Every fork is isomorphic to one of the form `Fork.of_ι _ _`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantde6548d2be06ed37ed1a29399d4cf37bf9598b6d4dbe8b07246af3c3091786f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantde6548d2be06ed37ed1a29399d4cf37bf9598b6d4dbe8b07246af3c3091786f1.lean#L698).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdc80ab4d21063a15331c5173d20334ff7a8fd0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
