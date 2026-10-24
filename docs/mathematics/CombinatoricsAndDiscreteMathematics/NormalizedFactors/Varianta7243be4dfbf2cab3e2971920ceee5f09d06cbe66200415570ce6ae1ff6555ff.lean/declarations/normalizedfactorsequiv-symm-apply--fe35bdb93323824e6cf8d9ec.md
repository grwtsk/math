# normalizedFactorsEquiv_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70ece8047033f2c6116dbfa2da7fb1d9cef78940",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 363,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c289dfe-2f0d-d43c-93d0-161d2c039a95",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0475c2dd-9bbd-df4d-fa20-bfb0c2e69aaa",
  "kind": "theorem",
  "lexical_name": "normalizedFactorsEquiv_symm_apply",
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
  "slug": "normalizedfactorsequiv-symm-apply--fe35bdb93323824e6cf8d9ec",
  "source": {
    "blob": "70ece8047033f2c6116dbfa2da7fb1d9cef78940",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 363,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe35bdb93323824e6cf8d9ec20f7f935a93063d0bc002b9f0906517be02bbed6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0475c2dd-9bbd-df4d-fa20-bfb0c2e69aaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedFactorsEquiv_symm_apply (he : ∀ x, normalize (f x) = f (normalize x))
    {a : α} {q : β} (hq : q ∈ normalizedFactors (f a)) :
    (normalizedFactorsEquiv he a).symm ⟨q, hq⟩ = (MulEquivClass.toMulEquiv f).symm q := rfl

end UniqueFactorizationMonoid

namespace UniqueFactorizationMonoid

open Multiset Associates

variable [CommMonoidWithZero α] [UniqueFactorizationMonoid α]

open scoped Classical in
/-- Noncomputably defines a `StrongNormalizationMonoid` structure on a `UniqueFactorizationMonoid`.
-/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70ece8047033f2c6116dbfa2da7fb1d9cef78940` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
