# exists_one_le_mul_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71f797a5-a522-3c04-bc95-fed405cf4320",
  "kind": "lemma",
  "lexical_name": "exists_one_le_mul_of_le",
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
  "slug": "exists-one-le-mul-of-le--cb976aebbb535956ea0df0a4",
  "source": {
    "blob": "c2e25592e58cd557aa301a2d757523c2c491e133",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 47,
    "path": "GRWTSK/Algebra/GroupTheory/ExistsOfLE/Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb976aebbb535956ea0df0a4fea5b75b97e9ab80f32b2d813696f772a8b80229",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ExistsOfLE/Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71f797a5-a522-3c04-bc95-fed405cf4320`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma exists_one_le_mul_of_le [MulLeftReflectLE α] (h : a ≤ b) :
    ∃ c, 1 ≤ c ∧ a * c = b := by
  obtain ⟨c, rfl⟩ := exists_mul_of_le h; exact ⟨c, one_le_of_le_mul_right h, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ExistsOfLE/Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ExistsOfLE/Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2e25592e58cd557aa301a2d757523c2c491e133` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
