# binaryCofanSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65a8f42ef6fa7a0809ff3aceb8dcf3fc8f77a09f8e46562d48ac91d8c3f0d315",
  "kind": "def",
  "lexical_name": "binaryCofanSum",
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
  "slug": "binarycofansum--6cd09204c6c3fa1fe8873b48",
  "source": {
    "blob": "00db21af17c26019142eb4df62a1eec13de8ae5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 126,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cd09204c6c3fa1fe8873b4813e9a0005ec8bbce4b248a0261f63254bfedfa3e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65a8f42ef6fa7a0809ff3aceb8dcf3fc8f77a09f8e46562d48ac91d8c3f0d315`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def binaryCofanSum : BinaryCofan c₁.pt c₂.pt :=
  BinaryCofan.mk (Cofan.IsColimit.desc hc₁ (fun i₁ => c.inj (Sum.inl i₁)))
    (Cofan.IsColimit.desc hc₂ (fun i₂ => c.inj (Sum.inr i₂)))

/-- The binary cofan `binaryCofanSum c c₁ c₂ hc₁ hc₂` is colimit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant0de9e73fd18d28dcd8d0f33b90e438e946bc2d57a2fc6bf19c9c967ba3cb7093.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00db21af17c26019142eb4df62a1eec13de8ae5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
