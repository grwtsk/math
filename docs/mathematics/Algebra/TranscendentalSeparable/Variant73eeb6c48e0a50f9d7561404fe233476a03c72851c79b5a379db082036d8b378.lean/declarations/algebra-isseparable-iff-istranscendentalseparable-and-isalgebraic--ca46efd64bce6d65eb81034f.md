# Algebra.isSeparable_iff_isTranscendentalSeparable_and_isAlgebraic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:035e4d17-a2e6-eb6f-f805-abe077f4293a",
  "kind": "lemma",
  "lexical_name": "Algebra.isSeparable_iff_isTranscendentalSeparable_and_isAlgebraic",
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
  "slug": "algebra-isseparable-iff-istranscendentalseparable-and-isalgebraic--ca46efd64bce6d65eb81034f",
  "source": {
    "blob": "37541afd3d2dd72541cb096c21ecbc6753015ae4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 84,
    "path": "GRWTSK/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca46efd64bce6d65eb81034f5d88a3fd9b79b3312019ea4a59a10fb466edac80",
  "verification": {
    "reference": "docs/verification/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:035e4d17-a2e6-eb6f-f805-abe077f4293a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Algebra.isSeparable_iff_isTranscendentalSeparable_and_isAlgebraic :
    Algebra.IsSeparable k K ↔
      (Algebra.IsTranscendentalSeparable k K ∧ Algebra.IsAlgebraic k K) := by
  refine ⟨fun h ↦ ⟨⟨fun _ _ ↦ inferInstance⟩, inferInstance⟩, fun ⟨sep, alg⟩ ↦ ?_⟩
  refine Algebra.isSeparable_iff.mpr fun x ↦ ⟨IsIntegral.isIntegral x, ?_⟩
  let L := IntermediateField.adjoin k {x}
  have fin : EssFiniteType k L := IntermediateField.essFiniteType_iff.mpr
    (IntermediateField.fg_adjoin_of_finite (Set.finite_singleton x))
  have sep' := (Algebra.isSeparable_iff_isSeparablyGenerated_and_isAlgebraic k L).mpr
    ⟨sep.forall_isSeparablyGenerated L fin, inferInstance⟩
  exact Subalgebra.isSeparable_iff.mp sep' x (by simp [L])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37541afd3d2dd72541cb096c21ecbc6753015ae4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
