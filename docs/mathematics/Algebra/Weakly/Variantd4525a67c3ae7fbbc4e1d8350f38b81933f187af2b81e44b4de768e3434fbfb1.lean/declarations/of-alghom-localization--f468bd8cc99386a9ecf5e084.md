# of_algHom_localization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec2607928279b60b2eacaf26b7ce5b7ca07739cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b40bac3-1172-f2f5-cd0f-650c0fb48463",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba5ab3af-1348-dadb-76c9-7a01af08a97a",
  "kind": "lemma",
  "lexical_name": "of_algHom_localization",
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
  "slug": "of-alghom-localization--f468bd8cc99386a9ecf5e084",
  "source": {
    "blob": "ec2607928279b60b2eacaf26b7ce5b7ca07739cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 83,
    "path": "GRWTSK/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f468bd8cc99386a9ecf5e084d88f621170fa9fba6cbd54923d1a59f87e27391e",
  "verification": {
    "reference": "docs/verification/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba5ab3af-1348-dadb-76c9-7a01af08a97a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_algHom_localization (p : Ideal S) [p.IsPrime] [WeaklyQuasiFiniteAt R p]
    (q : Ideal T) [q.IsPrime]
    (f : Localization.AtPrime p →ₐ[R] Localization.AtPrime q) (hf : Function.Surjective f) :
    WeaklyQuasiFiniteAt R q := by
  rw [weaklyQuasiFiniteAt_iff] at *
  have H : (p.under R).map (algebraMap R _) ≤
      ((q.under R).map (algebraMap R _)).comap f.toRingHom := by
    rw [Ideal.map_le_iff_le_comap, Ideal.comap_comap, AlgHom.toRingHom_eq_coe,
      AlgHom.comp_algebraMap_of_tower]
    grw [← Ideal.le_comap_map]
    intro x hx
    by_contra hx'
    have : IsLocalHom f.toRingHom := .of_surjective _ hf
    have := this.1 (algebraMap _ _ x) (by
      suffices IsUnit (IsLocalization.mk' (M := q.primeCompl) (Localization.AtPrime q)
        (algebraMap _ _ x) 1) by simpa [IsLocalization.mk'_one] using! this
      simpa [IsLocalization.AtPrime.isUnit_mk'_iff])
    exact (IsLocalization.AtPrime.isUnit_mk'_iff (Localization.AtPrime p) p
      (algebraMap _ _ x) 1).mp (by simpa [IsLocalization.mk'_one]) hx
  exact .of_surjective_algHom (S := Localization.AtPrime p ⧸
    (p.under R).map (algebraMap R (Localization.AtPrime p))) (Ideal.quotientMapₐ _ f H)
    (Ideal.quotientMap_surjective (H := H) hf)

/-- Use `Algebra.QuasiFiniteAt.of_surjectiveOnStalks` instead for `Algebra.QuasiFiniteAt R p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec2607928279b60b2eacaf26b7ce5b7ca07739cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
