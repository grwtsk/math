# lipschitzOnWith_cfcₙ_fun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44cd53bc76622f44aed7e388806ac3e32f701e37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 701,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:92b240e7-6478-35a7-25f4-557a54d40a8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea14ac37-47e4-e9f6-476f-f59e239c8591",
  "kind": "lemma",
  "lexical_name": "lipschitzOnWith_cfcₙ_fun",
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
  "slug": "lipschitzonwith-cfc-fun--a800d101815bf6114571dc40",
  "source": {
    "blob": "44cd53bc76622f44aed7e388806ac3e32f701e37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 717,
    "line": 701,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantd1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a800d101815bf6114571dc403e4d299a90ca0898e4d03a5043f63c178bfd9aeb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variantd1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea14ac37-47e4-e9f6-476f-f59e239c8591`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 701–717.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lipschitzOnWith_cfcₙ_fun (a : A) :
    LipschitzOnWith 1 (fun f ↦ cfcₙ (toFun {quasispectrum R a} f) a)
      {f | ContinuousOn (toFun {quasispectrum R a} f) (quasispectrum R a) ∧ f 0 = 0} := by
  by_cases ha : p a
  · rintro f ⟨hf, hf0⟩ g ⟨hg, hg0⟩
    simp only
    rw [cfcₙ_apply .., cfcₙ_apply .., isometry_cfcₙHom (R := R) a ha |>.edist_eq]
    simp only [ENNReal.coe_one, one_mul]
    rw [← ContinuousMapZero.isometry_toContinuousMap.edist_eq,
      edist_continuousRestrict_of_singleton hf hg]
  · simpa [cfcₙ_apply_of_not_predicate a ha] using LipschitzWith.const' 0 |>.lipschitzOnWith

open UniformOnFun in
open scoped ContinuousFunctionalCalculus in
/-- The function `f ↦ cfcₙ f a` is Lipschitz with constant 1 with respect to
supremum metric (on `R →ᵤ[{s}] R`) on those functions which are continuous on a set `s` containing
the quasispectrum and map zero to itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variantd1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variantd1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean#L701).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44cd53bc76622f44aed7e388806ac3e32f701e37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
