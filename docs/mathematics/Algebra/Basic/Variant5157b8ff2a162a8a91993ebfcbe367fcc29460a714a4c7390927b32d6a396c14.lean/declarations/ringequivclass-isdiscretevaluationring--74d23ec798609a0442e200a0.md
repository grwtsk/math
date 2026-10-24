# RingEquivClass.isDiscreteValuationRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:724c8a67-ad56-771c-a4ec-764bb55fa0df",
  "kind": "theorem",
  "lexical_name": "RingEquivClass.isDiscreteValuationRing",
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
  "slug": "ringequivclass-isdiscretevaluationring--74d23ec798609a0442e200a0",
  "source": {
    "blob": "b816646bcf92af0e23f5cda588461b42b8e4992c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 305,
    "path": "GRWTSK/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74d23ec798609a0442e200a0182acb5f0ddb9b55430fbcd037a45427e82549a5",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:724c8a67-ad56-771c-a4ec-764bb55fa0df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RingEquivClass.isDiscreteValuationRing {A B E : Type*} [CommRing A] [IsDomain A]
    [CommRing B] [IsDomain B] [IsDiscreteValuationRing A] [EquivLike E A B] [RingEquivClass E A B]
    (e : E) : IsDiscreteValuationRing B where
  principal := (isPrincipalIdealRing_iff _).1 <|
    IsPrincipalIdealRing.of_surjective _ (e : A ≃+* B).surjective
  __ : IsLocalRing B := (e : A ≃+* B).isLocalRing
  not_a_field' := by
    obtain ⟨a, ha⟩ := Submodule.nonzero_mem_of_bot_lt (bot_lt_iff_ne_bot.mpr
      <| IsDiscreteValuationRing.not_a_field A)
    rw [Submodule.ne_bot_iff]
    refine ⟨e a, ⟨?_, by simp only [ne_eq, EmbeddingLike.map_eq_zero_iff, ZeroMemClass.coe_eq_zero,
      ha, not_false_eq_true]⟩⟩
    rw [IsLocalRing.mem_maximalIdeal, map_mem_nonunits_iff e, ← IsLocalRing.mem_maximalIdeal]
    exact a.2

section

variable [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]
variable {R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b816646bcf92af0e23f5cda588461b42b8e4992c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
