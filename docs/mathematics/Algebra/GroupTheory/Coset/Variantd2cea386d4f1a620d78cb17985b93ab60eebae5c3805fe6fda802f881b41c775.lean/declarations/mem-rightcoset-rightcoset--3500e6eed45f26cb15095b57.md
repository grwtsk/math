# mem_rightCoset_rightCoset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f8a09d6-3344-6194-a640-2813062a878d",
  "kind": "theorem",
  "lexical_name": "mem_rightCoset_rightCoset",
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
  "slug": "mem-rightcoset-rightcoset--3500e6eed45f26cb15095b57",
  "source": {
    "blob": "614f663419b27d156f65a333ed44a8668f7c0409",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 196,
    "path": "GRWTSK/Algebra/GroupTheory/Coset/Variantd2cea386d4f1a620d78cb17985b93ab60eebae5c3805fe6fda802f881b41c775.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3500e6eed45f26cb15095b578244e6ddb880183f34c7994792360992c84fe074",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Coset/Variantd2cea386d4f1a620d78cb17985b93ab60eebae5c3805fe6fda802f881b41c775.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f8a09d6-3344-6194-a640-2813062a878d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_rightCoset_rightCoset {a : α} (ha : (s : Set α) *r a = s) : a ∈ s := by
  rw [← SetLike.mem_coe, ← ha]; exact mem_own_rightCoset s a
#align mem_right_coset_right_coset mem_rightCoset_rightCoset
#align mem_right_add_coset_right_add_coset mem_rightAddCoset_rightAddCoset

end CosetSubmonoid

section CosetGroup

variable [Group α] {s : Set α} {x : α}

@[to_additive mem_leftAddCoset_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Coset/Variantd2cea386d4f1a620d78cb17985b93ab60eebae5c3805fe6fda802f881b41c775.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Coset/Variantd2cea386d4f1a620d78cb17985b93ab60eebae5c3805fe6fda802f881b41c775.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `614f663419b27d156f65a333ed44a8668f7c0409` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
