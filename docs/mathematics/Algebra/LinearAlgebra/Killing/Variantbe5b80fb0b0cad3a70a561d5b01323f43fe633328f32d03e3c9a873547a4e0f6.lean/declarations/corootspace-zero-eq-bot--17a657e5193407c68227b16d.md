# corootSpace_zero_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e791bdea83445f8858ba631e4b6119286bce2203",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 218,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be5b80fb0b0cad3a70a561d5b01323f43fe633328f32d03e3c9a873547a4e0f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d90d0d67-8391-f7ee-508a-b7649e767140",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:262ff244-5d1f-01d0-fd9e-ae3477b2c5d9",
  "kind": "lemma",
  "lexical_name": "corootSpace_zero_eq_bot",
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
  "slug": "corootspace-zero-eq-bot--17a657e5193407c68227b16d",
  "source": {
    "blob": "e791bdea83445f8858ba631e4b6119286bce2203",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 218,
    "path": "GRWTSK/Algebra/LinearAlgebra/Killing/Variantbe5b80fb0b0cad3a70a561d5b01323f43fe633328f32d03e3c9a873547a4e0f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17a657e5193407c68227b16d4435b772d14c269ce5d0379ed442681a2e01d814",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Killing/Variantbe5b80fb0b0cad3a70a561d5b01323f43fe633328f32d03e3c9a873547a4e0f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:262ff244-5d1f-01d0-fd9e-ae3477b2c5d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma corootSpace_zero_eq_bot :
    corootSpace (0 : H → K) = ⊥ := by
  refine eq_bot_iff.mpr fun x hx ↦ ?_
  suffices {x | ∃ y ∈ H, ∃ z ∈ H, ⁅y, z⁆ = x} = {0} by simpa [mem_corootSpace, this] using hx
  refine eq_singleton_iff_unique_mem.mpr ⟨⟨0, H.zero_mem, 0, H.zero_mem, zero_lie 0⟩, ?_⟩
  rintro - ⟨y, hy, z, hz, rfl⟩
  suffices ⁅(⟨y, hy⟩ : H), (⟨z, hz⟩ : H)⁆ = 0 by
    simpa only [Subtype.ext_iff, LieSubalgebra.coe_bracket, ZeroMemClass.coe_zero] using this
  simp [trivial_lie_zero]

variable {K L} in
/-- The restriction of the Killing form to a Cartan subalgebra, as a linear equivalence to the
dual. -/
@[simps! apply_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Killing/Variantbe5b80fb0b0cad3a70a561d5b01323f43fe633328f32d03e3c9a873547a4e0f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Killing/Variantbe5b80fb0b0cad3a70a561d5b01323f43fe633328f32d03e3c9a873547a4e0f6.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e791bdea83445f8858ba631e4b6119286bce2203` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
