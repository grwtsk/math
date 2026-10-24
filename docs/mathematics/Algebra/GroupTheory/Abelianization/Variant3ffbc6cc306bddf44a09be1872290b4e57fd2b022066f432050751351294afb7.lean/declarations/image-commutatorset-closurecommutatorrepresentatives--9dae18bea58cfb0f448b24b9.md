# image_commutatorSet_closureCommutatorRepresentatives

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6ae1c63f35d57a1725a57f662344e2388340fec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 293,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3ffbc6cc306bddf44a09be1872290b4e57fd2b022066f432050751351294afb7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7935f9aa-3884-71bd-1d79-666ddd3849ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42276f2a-4e73-000c-f2cc-1548e2d0532f",
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
  "slug": "image-commutatorset-closurecommutatorrepresentatives--9dae18bea58cfb0f448b24b9",
  "source": {
    "blob": "f6ae1c63f35d57a1725a57f662344e2388340fec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 293,
    "path": "GRWTSK/Algebra/GroupTheory/Abelianization/Variant3ffbc6cc306bddf44a09be1872290b4e57fd2b022066f432050751351294afb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dae18bea58cfb0f448b24b9884e521dc2eed3179468b5e1403b64d860a247ae",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Abelianization/Variant3ffbc6cc306bddf44a09be1872290b4e57fd2b022066f432050751351294afb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42276f2a-4e73-000c-f2cc-1548e2d0532f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–306.

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
#align image_commutator_set_closure_commutator_representatives image_commutatorSet_closureCommutatorRepresentatives

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Abelianization/Variant3ffbc6cc306bddf44a09be1872290b4e57fd2b022066f432050751351294afb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Abelianization/Variant3ffbc6cc306bddf44a09be1872290b4e57fd2b022066f432050751351294afb7.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6ae1c63f35d57a1725a57f662344e2388340fec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
