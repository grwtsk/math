# mapPiLocalization_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e5cd102-f1ea-8522-855a-0f7fa18e76f7",
  "kind": "theorem",
  "lexical_name": "mapPiLocalization_bijective",
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
  "slug": "mappilocalization-bijective--305425e0c46278b92ed5f27a",
  "source": {
    "blob": "80d58cf12b750ae32b0506e7059aa90ffc482d68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 246,
    "path": "GRWTSK/Algebra/Localization/Variant1c4a40bd2b0c544f568ba9560d222ef39b72603543b46593c3373cf538f2f3f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:305425e0c46278b92ed5f27a16e86073bfccc2d388ce98d161f72f69194a89c2",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variant1c4a40bd2b0c544f568ba9560d222ef39b72603543b46593c3373cf538f2f3f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e5cd102-f1ea-8522-855a-0f7fa18e76f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapPiLocalization_bijective (hf : Function.Bijective f) :
    Function.Bijective (mapPiLocalization f) := by
  let f := RingEquiv.ofBijective f hf
  let e := RingEquiv.ofRingHom (mapPiLocalization (f : R →+* S)) (mapPiLocalization f.symm) ?_ ?_
  · exact e.bijective
  · rw [← mapPiLocalization_comp, RingEquiv.comp_symm, mapPiLocalization_id]
  · rw [← mapPiLocalization_comp, RingEquiv.symm_comp, mapPiLocalization_id]

section Pi

variable {ι} (R : ι → Type*) [∀ i, CommSemiring (R i)] [∀ i, Nontrivial (R i)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variant1c4a40bd2b0c544f568ba9560d222ef39b72603543b46593c3373cf538f2f3f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variant1c4a40bd2b0c544f568ba9560d222ef39b72603543b46593c3373cf538f2f3f4.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80d58cf12b750ae32b0506e7059aa90ffc482d68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
