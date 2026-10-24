# rightToLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:959ed0fe9aa7116063d8be042168208251d3fb2f855d30126e8daf1ec09d80a4",
  "kind": "def",
  "lexical_name": "rightToLeft",
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
  "slug": "righttoleft--c68e0fb35a29927e05fd1db5",
  "source": {
    "blob": "43a284d06fe2f0aef23dbb6c3b9d39a5dbc4a63a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 111,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triple/Variant5290b59e6a5dac76dedba70b1d3ed1fe15479694f9a71e3673dd5f951598a158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c68e0fb35a29927e05fd1db5f06a45d53dce2e6103962c4a4841f01ad1b48a14",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triple/Variant5290b59e6a5dac76dedba70b1d3ed1fe15479694f9a71e3673dd5f951598a158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:959ed0fe9aa7116063d8be042168208251d3fb2f855d30126e8daf1ec09d80a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def rightToLeft : H ⟶ F :=
  ((FullyFaithful.ofFullyFaithful G).whiskeringRight _).preimage (t.adj₂.counit ≫ t.adj₁.unit)

/-- For an adjoint triple `F ⊣ G ⊣ H` where `G` is fully faithful, whiskering the natural
transformation `H ⟶ F` with `G` yields the composition of the counit of the second adjunction with
the unit of the first adjunction. -/
@[simp, reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triple/Variant5290b59e6a5dac76dedba70b1d3ed1fe15479694f9a71e3673dd5f951598a158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triple/Variant5290b59e6a5dac76dedba70b1d3ed1fe15479694f9a71e3673dd5f951598a158.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43a284d06fe2f0aef23dbb6c3b9d39a5dbc4a63a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
