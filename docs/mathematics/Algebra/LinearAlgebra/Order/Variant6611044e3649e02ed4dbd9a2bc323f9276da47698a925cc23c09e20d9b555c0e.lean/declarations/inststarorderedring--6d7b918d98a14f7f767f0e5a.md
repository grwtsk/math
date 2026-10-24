# instStarOrderedRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3781b143919a1f3047cb42196c47cdbc39d3a386",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7cb304c5-23ee-6341-836b-51fd42bb29e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9bf41697-7e07-5d18-95ff-2b2368ced367",
  "kind": "lemma",
  "lexical_name": "instStarOrderedRing",
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
  "slug": "inststarorderedring--6d7b918d98a14f7f767f0e5a",
  "source": {
    "blob": "3781b143919a1f3047cb42196c47cdbc39d3a386",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 120,
    "path": "GRWTSK/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d7b918d98a14f7f767f0e5a321deb725329d500a7f45cc9a28f5894cb8dc38a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bf41697-7e07-5d18-95ff-2b2368ced367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma instStarOrderedRing : StarOrderedRing (Matrix n n 𝕜) :=
  .of_nonneg_iff' add_le_add_right fun A ↦
    ⟨fun hA ↦ by
      classical
      obtain ⟨X, hX, -, rfl⟩ :=
        sub_zero A ▸ CFC.exists_sqrt_of_isSelfAdjoint_of_quasispectrumRestricts hA.isHermitian
          (QuasispectrumRestricts.nnreal_of_nonneg hA.nonneg)
      exact ⟨X, hX.star_eq.symm ▸ rfl⟩,
    fun ⟨A, hA⟩ => hA ▸ (posSemidef_conjTranspose_mul_self A).nonneg⟩

scoped[MatrixOrder] attribute [instance] instStarOrderedRing

end PartialOrder

open scoped MatrixOrder

variable [Fintype n]

namespace PosSemidef

section sqrtDeprecated

variable [DecidableEq n] {A : Matrix n n 𝕜} (hA : PosSemidef A)

include hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3781b143919a1f3047cb42196c47cdbc39d3a386` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
