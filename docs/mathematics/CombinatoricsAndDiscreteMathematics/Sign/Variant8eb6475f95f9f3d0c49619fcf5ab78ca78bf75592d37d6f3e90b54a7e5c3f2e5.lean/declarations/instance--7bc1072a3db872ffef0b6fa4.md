# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:243ae03fb83067d3eef4158262b1d14905714ff4437db596a3e7f391f842e71b",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--7bc1072a3db872ffef0b6fa4",
  "source": {
    "blob": "27b8aa54b75199235cede804583420dc66024948",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sign/Variant8eb6475f95f9f3d0c49619fcf5ab78ca78bf75592d37d6f3e90b54a7e5c3f2e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bc1072a3db872ffef0b6fa4f3b460d3f001df1cfd0bdd5cd57e324bf12fbb0a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sign/Variant8eb6475f95f9f3d0c49619fcf5ab78ca78bf75592d37d6f3e90b54a7e5c3f2e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:243ae03fb83067d3eef4158262b1d14905714ff4437db596a3e7f391f842e71b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CommGroupWithZero SignType where
  zero := 0
  one := 1
  mul := (· * ·)
  inv := id
  mul_zero a := by cases a <;> rfl
  zero_mul a := by cases a <;> rfl
  mul_one a := by cases a <;> rfl
  one_mul a := by cases a <;> rfl
  mul_inv_cancel a ha := by cases a <;> trivial
  mul_comm := mul_comm
  mul_assoc := mul_assoc
  exists_pair_ne := ⟨0, 1, by rintro ⟨_⟩⟩
  inv_zero := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sign/Variant8eb6475f95f9f3d0c49619fcf5ab78ca78bf75592d37d6f3e90b54a7e5c3f2e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sign/Variant8eb6475f95f9f3d0c49619fcf5ab78ca78bf75592d37d6f3e90b54a7e5c3f2e5.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27b8aa54b75199235cede804583420dc66024948` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
