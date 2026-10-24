# exists_isFinite_morphismRestrict_of_finite_preimage_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a32b081abd10daac73e49c7f6f401ee80590c99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 406,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e526b917cd543111df82827358c5d65d63dc564280e067145152d247bb3f0502.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:084e6925-e42f-0872-0d2f-f55b2f378a00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:592f79ca-8ec3-dd83-941f-67c9c7a3cc04",
  "kind": "lemma",
  "lexical_name": "exists_isFinite_morphismRestrict_of_finite_preimage_singleton",
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
  "slug": "exists-isfinite-morphismrestrict-of-finite-preimage-singleton--d2c4e2c634f1cb2c588a5955",
  "source": {
    "blob": "9a32b081abd10daac73e49c7f6f401ee80590c99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 406,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variante526b917cd543111df82827358c5d65d63dc564280e067145152d247bb3f0502.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2c4e2c634f1cb2c588a5955ccf230e524ab62f4d3fcc5531ce4e2f483f78616",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variante526b917cd543111df82827358c5d65d63dc564280e067145152d247bb3f0502.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:592f79ca-8ec3-dd83-941f-67c9c7a3cc04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isFinite_morphismRestrict_of_finite_preimage_singleton
    [IsProper f] (y : Y) (hx : (f ⁻¹' {y}).Finite) :
    ∃ V : Y.Opens, y ∈ V ∧ IsFinite (f ∣_ V) := by
  let V : Y.Opens := ⟨_, (f.isClosedMap _ f.quasiFiniteLocus.isOpen.isClosed_compl).isOpen_compl⟩
  refine ⟨V, ?_, ?_⟩
  · suffices ∀ x, f x = y → f.QuasiFiniteAt x by simpa [V, not_imp_not]
    rintro x rfl
    have : Finite (f.fiber (f x)) := (f.fiberHomeo (f x)).finite_iff.mpr ‹_›
    exact Scheme.Hom.quasiFiniteAt_iff_isOpen_singleton_asFiber.mpr (isOpen_discrete _)
  · suffices LocallyQuasiFinite (f ∣_ V) from .of_isProper_of_locallyQuasiFinite _
    rw [← Scheme.Hom.quasiFiniteLocus_eq_top_iff]
    ext x
    have : f.QuasiFiniteAt ((f ⁻¹ᵁ V).ι x) := by by_contra H; exact x.2 ⟨_, H, by simp⟩
    rw [← Scheme.Hom.quasiFiniteAt_comp_iff_of_isOpenImmersion, ← morphismRestrict_ι,
      Scheme.Hom.quasiFiniteAt_comp_iff] at this
    simpa

@[stacks 0AH8]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variante526b917cd543111df82827358c5d65d63dc564280e067145152d247bb3f0502.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variante526b917cd543111df82827358c5d65d63dc564280e067145152d247bb3f0502.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a32b081abd10daac73e49c7f6f401ee80590c99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
