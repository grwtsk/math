# image_commutatorSet_closureCommutatorRepresentatives

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:653aa7ec-f34e-eebe-06d6-bc4efefb7d87",
  "kind": "theorem",
  "lexical_name": "image_commutatorSet_closureCommutatorRepresentatives",
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
  "slug": "image-commutatorset-closurecommutatorrepresentatives--4bec1285bf29ceac085b337f",
  "source": {
    "blob": "907ca8c5e20288c48534c8812aed9f7cbb355063",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 302,
    "path": "GRWTSK/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bec1285bf29ceac085b337fc50329e9ce94b9a52452cc8a1916a55c173109d5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:653aa7ec-f34e-eebe-06d6-bc4efefb7d87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_commutatorSet_closureCommutatorRepresentatives :
    (closureCommutatorRepresentatives G).subtype ''
        commutatorSet (closureCommutatorRepresentatives G) =
      commutatorSet G := by
  apply Set.Subset.antisymm
  · rintro - ⟨-, ⟨g₁, g₂, rfl⟩, rfl⟩
    exact ⟨g₁, g₂, rfl⟩
  · exact fun g hg =>
      ⟨_,
        ⟨⟨_, subset_closure (Or.inl ⟨_, ⟨⟨g, hg⟩, rfl⟩, rfl⟩)⟩,
          ⟨_, subset_closure (Or.inr ⟨_, ⟨⟨g, hg⟩, rfl⟩, rfl⟩)⟩, rfl⟩,
        hg.choose_spec.choose_spec⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `907ca8c5e20288c48534c8812aed9f7cbb355063` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
