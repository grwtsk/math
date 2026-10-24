# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db7e089418a79e876ef806d4ad7bbbf8a8bc47b095ae6c1a6de550aec8916d87",
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
  "slug": "instance--ed0e219637ab318ba0e6da7c",
  "source": {
    "blob": "1b744ae4d8e99bb45d3f5d1a930887aed56b9af6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 370,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Varianta2bf828287f17d9fe6f978427fca683f4cd7eb73c583b6b0961f039056b5e053.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed0e219637ab318ba0e6da7c933356195b7e0cd3b200488a27c148b63fbbb05f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Varianta2bf828287f17d9fe6f978427fca683f4cd7eb73c583b6b0961f039056b5e053.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db7e089418a79e876ef806d4ad7bbbf8a8bc47b095ae6c1a6de550aec8916d87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Lattice α where
  le a b := a + b = b
  le_refl := add_self
  le_trans _ _ _ h₁ h₂ := by rw [← h₂, ← add_assoc, h₁]
  le_antisymm _ _ h₁ h₂ := by rwa [← h₂, add_comm]
  sup a b := a + b
  le_sup_left _ _ := by rw [← add_assoc, add_self]
  le_sup_right _ _ := by rw [add_comm, add_assoc, add_self]
  sup_le _ _ _ h₁ h₂ := by rw [add_assoc, h₂, h₁]
  inf a b := -(-a + -b)
  inf_le_left := min_add_left
  inf_le_right a b := add_comm (-b) _ ▸ min_add_left ..
  le_inf _ _ _ h₁ h₂ := by rw [add_min_distrib, h₁, h₂]

/-- Derive a Boolean algebra from a Robbins algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Varianta2bf828287f17d9fe6f978427fca683f4cd7eb73c583b6b0961f039056b5e053.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Varianta2bf828287f17d9fe6f978427fca683f4cd7eb73c583b6b0961f039056b5e053.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b744ae4d8e99bb45d3f5d1a930887aed56b9af6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
