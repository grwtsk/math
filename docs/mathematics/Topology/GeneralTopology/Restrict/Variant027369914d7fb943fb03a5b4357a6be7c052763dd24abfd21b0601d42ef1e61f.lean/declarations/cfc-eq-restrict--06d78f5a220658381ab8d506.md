# cfc_eq_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b7af7c56c709043e529b02c23079784ba5f351b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c597b417-3421-7081-f889-d6e956fea424",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1bce947d-b1b6-3fd0-7b65-247d429e630d",
  "kind": "lemma",
  "lexical_name": "cfc_eq_restrict",
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
  "slug": "cfc-eq-restrict--06d78f5a220658381ab8d506",
  "source": {
    "blob": "7b7af7c56c709043e529b02c23079784ba5f351b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06d78f5a220658381ab8d5064b8b9b0849cb99501a5a2a63a6dec4d9edd348eb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bce947d-b1b6-3fd0-7b65-247d429e630d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfc_eq_restrict (f : C(S, R)) (halg : IsClosedEmbedding (algebraMap R S)) {a : A} (hpa : p a)
    (hqa : q a) (h : SpectrumRestricts a f) (g : R → R) :
    cfc g a = cfc (fun x ↦ algebraMap R S (g (f x))) a := by
  by_cases hg : ContinuousOn g (spectrum R a)
  · rw [cfc_apply g a, cfcHom_eq_restrict f hpa hqa h, SpectrumRestricts.starAlgHom_apply,
      cfcHom_eq_cfc_extend 0]
    congr! 1 with x hx
    lift x to spectrum S a using hx
    simp [Function.comp]
  · have : ¬ ContinuousOn (fun x ↦ algebraMap R S (g (f x)) : S → S) (spectrum S a) := by
      refine fun hg' ↦ hg ?_
      rw [halg.isEmbedding.continuousOn_iff]
      simpa [halg.isEmbedding.continuousOn_iff, Function.comp_def, h.left_inv _] using
        hg'.comp halg.isEmbedding.continuous.continuousOn (fun _ : R ↦ spectrum.algebraMap_mem S)
    rw [cfc_apply_of_not_continuousOn a hg, cfc_apply_of_not_continuousOn a this]

end Generic

variable [ClosedEmbeddingContinuousFunctionalCalculus S A q]
  [ContinuousMap.UniqueHom R A] [CompleteSpace R]

open ContinuousFunctionalCalculus in
/-- Given a `ContinuousFunctionalCalculus S A q`. If we form the predicate `p` for `a : A`
characterized by: `q a` and the spectrum of `a` restricts to the scalar subring `R` via
`f : C(S, R)`, then we can get a restricted functional calculus
`ContinuousFunctionalCalculus R A p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7af7c56c709043e529b02c23079784ba5f351b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
