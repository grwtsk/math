# Algebra.norm_localization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b3751bda99272157cf88c7979aa496cca68e2a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc5f58fcd44fcdac433849e9f831a165a780aa08c3ef265b16ff44668fc800dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:742e45e2-3059-8b54-cb47-596ca7a86b2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b65a8de-e9a2-f08e-01ce-9bba04500b72",
  "kind": "theorem",
  "lexical_name": "Algebra.norm_localization",
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
  "slug": "algebra-norm-localization--9e76904d1e23ee4ad3f5f998",
  "source": {
    "blob": "9b3751bda99272157cf88c7979aa496cca68e2a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 65,
    "path": "GRWTSK/Algebra/NormTrace/Variantbc5f58fcd44fcdac433849e9f831a165a780aa08c3ef265b16ff44668fc800dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e76904d1e23ee4ad3f5f99801a247cb1336c47bb85e6a390ad2d28ffdd5a8e2",
  "verification": {
    "reference": "docs/verification/Algebra/NormTrace/Variantbc5f58fcd44fcdac433849e9f831a165a780aa08c3ef265b16ff44668fc800dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b65a8de-e9a2-f08e-01ce-9bba04500b72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Algebra.norm_localization [Module.Free R S] [Module.Finite R S] (a : S) :
    Algebra.norm Rₘ (algebraMap S Sₘ a) = algebraMap R Rₘ (Algebra.norm R a) := by
  cases subsingleton_or_nontrivial R
  · haveI : Subsingleton Rₘ := Module.subsingleton R Rₘ
    simp
  let b := Module.Free.chooseBasis R S
  letI := Classical.decEq (Module.Free.ChooseBasisIndex R S)
  rw [Algebra.norm_eq_matrix_det (b.localizationLocalization Rₘ M Sₘ),
    Algebra.norm_eq_matrix_det b, RingHom.map_det, ← Algebra.map_leftMulMatrix_localization]
#align algebra.norm_localization Algebra.norm_localization

/-- Let `S` be an extension of `R` and `Rₘ Sₘ` be localizations at `M` of `R S` respectively.
Then the trace of `a : Sₘ` over `Rₘ` is the trace of `a : S` over `R` if `S` is free as `R`-module.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NormTrace/Variantbc5f58fcd44fcdac433849e9f831a165a780aa08c3ef265b16ff44668fc800dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NormTrace/Variantbc5f58fcd44fcdac433849e9f831a165a780aa08c3ef265b16ff44668fc800dc.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b3751bda99272157cf88c7979aa496cca68e2a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
