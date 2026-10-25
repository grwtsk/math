# Exists.classicalRecOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5eeb5ad19f2c21cb66f51b6048c78c9d47a145a5bf4a7afc630454fe24139b55",
  "kind": "def",
  "lexical_name": "Exists.classicalRecOn",
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
  "slug": "exists-classicalrecon--c560fd8f67b6fecc484609c5",
  "source": {
    "blob": "ad2cf618637cac4ef0c5ea4cd232d7d642d41705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1036,
    "line": 1028,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant82172cfd06c3ab50ae9f7a5474fd02eca47c1c9c2be3c3456a6064791f369fa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c560fd8f67b6fecc484609c55b2b8938f98eda9c83aa88a217d700e0b2c5f21f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant82172cfd06c3ab50ae9f7a5474fd02eca47c1c9c2be3c3456a6064791f369fa9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5eeb5ad19f2c21cb66f51b6048c78c9d47a145a5bf4a7afc630454fe24139b55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1028–1036.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Exists.classicalRecOn {p : α → Prop} (h : ∃ a, p a) {C} (H : ∀ a, p a → C) : C :=
  H (Classical.choose h) (Classical.choose_spec h)
#align exists.classical_rec_on Exists.classicalRecOn

/-! ### Declarations about bounded quantifiers -/

section BoundedQuantifiers
variable {r p q : α → Prop} {P Q : ∀ x, p x → Prop} {b : Prop}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant82172cfd06c3ab50ae9f7a5474fd02eca47c1c9c2be3c3456a6064791f369fa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant82172cfd06c3ab50ae9f7a5474fd02eca47c1c9c2be3c3456a6064791f369fa9.lean#L1028).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad2cf618637cac4ef0c5ea4cd232d7d642d41705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
