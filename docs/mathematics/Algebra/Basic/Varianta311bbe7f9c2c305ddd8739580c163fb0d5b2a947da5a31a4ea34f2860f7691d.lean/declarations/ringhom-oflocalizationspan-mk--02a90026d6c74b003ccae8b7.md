# RingHom.OfLocalizationSpan.mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8fa47b8c0a371b21e609fe6b2d83e13c4787f0c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7848dfe9-26fc-0a1f-9025-776c88f5bc76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e833d71-c8f9-69b9-cad8-ea9e2a6e6300",
  "kind": "lemma",
  "lexical_name": "RingHom.OfLocalizationSpan.mk",
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
  "slug": "ringhom-oflocalizationspan-mk--02a90026d6c74b003ccae8b7",
  "source": {
    "blob": "d8fa47b8c0a371b21e609fe6b2d83e13c4787f0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 206,
    "path": "GRWTSK/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02a90026d6c74b003ccae8b7af26652fec9a10d21c345be29863d502942c9400",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e833d71-c8f9-69b9-cad8-ea9e2a6e6300`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RingHom.OfLocalizationSpan.mk (hP : RingHom.RespectsIso P)
    (H : ∀ {R S : Type u} [CommRing R] [CommRing S] [Algebra R S] (s : Set R),
      Ideal.span s = ⊤ →
      (∀ r ∈ s, P (algebraMap (Localization.Away r) (Localization.Away r ⊗[R] S))) →
      P (algebraMap R S)) :
    OfLocalizationSpan P := by
  introv R hs hf
  algebraize [f]
  let _ := fun r : R => (Localization.awayMap (algebraMap R S) r).toAlgebra
  refine H s hs (fun r hr ↦ ?_)
  have : algebraMap (Localization.Away r) (Localization.Away r ⊗[R] S) =
      ((IsLocalization.Away.tensorRightEquiv S r (Localization.Away r)).symm : _ →+* _).comp
        (algebraMap (Localization.Away r) (Localization.Away (algebraMap R S r))) := by
    apply IsLocalization.ringHom_ext (Submonoid.powers r)
    ext
    simp [RingHom.algebraMap_toAlgebra, Localization.awayMap, IsLocalization.Away.map,
      Algebra.TensorProduct.tmul_one_eq_one_tmul, RingHom.algebraMap_toAlgebra]
  rw [this]
  exact hP.1 _ _ (hf ⟨r, hr⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8fa47b8c0a371b21e609fe6b2d83e13c4787f0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
