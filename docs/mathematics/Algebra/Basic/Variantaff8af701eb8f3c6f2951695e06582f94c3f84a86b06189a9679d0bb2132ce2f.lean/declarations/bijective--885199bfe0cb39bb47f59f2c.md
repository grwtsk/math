# bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2567dad891f61e786bcb5d8a5fc2ef46a41d1177",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/aff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08121606-a2bc-20c4-7d4a-5a744c872da6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f14ffa56-f2fa-f727-2b68-b94051c60f8b",
  "kind": "lemma",
  "lexical_name": "bijective",
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
  "slug": "bijective--885199bfe0cb39bb47f59f2c",
  "source": {
    "blob": "2567dad891f61e786bcb5d8a5fc2ef46a41d1177",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 161,
    "path": "GRWTSK/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:885199bfe0cb39bb47f59f2cd58acff4643dabf9ca14af74485b54637af188d0",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f14ffa56-f2fa-f727-2b68-b94051c60f8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma bijective (f : S →+* Q) (hf : f.comp (algebraMap R S) = algebraMap R Q) :
    Function.Bijective f :=
  (show f = IsLocalization.algEquiv M S Q by
    apply IsLocalization.ringHom_ext M; rw [hf]; ext; simp) ▸
    (IsLocalization.algEquiv M S Q).toEquiv.bijective

end AlgEquiv

section liftAlgHom

variable {A : Type*} [CommSemiring A]
  {R : Type*} [CommSemiring R] [Algebra A R] {M : Submonoid R}
  {S : Type*} [CommSemiring S] [Algebra A S] [Algebra R S] [IsScalarTower A R S]
  {P : Type*} [CommSemiring P] [Algebra A P] [IsLocalization M S]
  {f : R →ₐ[A] P} (hf : ∀ y : M, IsUnit (f y)) (x : S)
include hf

/-- `AlgHom` version of `IsLocalization.lift`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2567dad891f61e786bcb5d8a5fc2ef46a41d1177` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
