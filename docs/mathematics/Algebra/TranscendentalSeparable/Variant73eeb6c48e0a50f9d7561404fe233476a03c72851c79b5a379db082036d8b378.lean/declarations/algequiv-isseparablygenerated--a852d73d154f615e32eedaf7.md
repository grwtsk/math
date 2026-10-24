# AlgEquiv.isSeparablyGenerated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d0f2299-f6b2-5c99-4e4e-13c8aac5a0a4",
  "kind": "lemma",
  "lexical_name": "AlgEquiv.isSeparablyGenerated",
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
  "slug": "algequiv-isseparablygenerated--a852d73d154f615e32eedaf7",
  "source": {
    "blob": "37541afd3d2dd72541cb096c21ecbc6753015ae4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 48,
    "path": "GRWTSK/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a852d73d154f615e32eedaf74e72b658ed14b48a51fcc0621f205c190de65861",
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

Occurrence: `result:7d0f2299-f6b2-5c99-4e4e-13c8aac5a0a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AlgEquiv.isSeparablyGenerated {K' : Type*} [Field K'] [Algebra k K'] (e : K ≃ₐ[k] K')
    [Algebra.IsSeparablyGenerated k K] : Algebra.IsSeparablyGenerated k K' := by
  rcases ‹Algebra.IsSeparablyGenerated k K› with ⟨s, isT, sep⟩
  refine ⟨e '' s, (e.isTranscendenceBasis isT).to_subtype_range' (by simp [Set.range_comp]), ?_⟩
  let e' := ((IntermediateField.adjoin k s).equivMap e.toAlgHom).trans
    (IntermediateField.equivOfEq (IntermediateField.adjoin_map k s e.toAlgHom))
  exact Algebra.IsSeparable.of_equiv_equiv e'.toRingEquiv e.toRingEquiv rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37541afd3d2dd72541cb096c21ecbc6753015ae4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
