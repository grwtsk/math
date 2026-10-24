# Algebra.norm_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49947e279844a45f5bbc30dd87c0dc701ade7e2c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea500eb67384b82df548f28509cf53a7f9bf3cd6022221f9833f900764be4b47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:45a29000-11b9-d020-df5c-46e318a9f6f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1755e720-6855-0fbb-4dc1-b420fc6b8802",
  "kind": "lemma",
  "lexical_name": "Algebra.norm_eq_iff",
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
  "slug": "algebra-norm-eq-iff--d281fbc2d79670b1671e822d",
  "source": {
    "blob": "49947e279844a45f5bbc30dd87c0dc701ade7e2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 71,
    "path": "GRWTSK/Algebra/NormTrace/Variantea500eb67384b82df548f28509cf53a7f9bf3cd6022221f9833f900764be4b47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d281fbc2d79670b1671e822d02e67a12a55c790ad956329e3a67fcdd38bbed1f",
  "verification": {
    "reference": "docs/verification/Algebra/NormTrace/Variantea500eb67384b82df548f28509cf53a7f9bf3cd6022221f9833f900764be4b47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1755e720-6855-0fbb-4dc1-b420fc6b8802`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Algebra.norm_eq_iff [Module.Free R S] [Module.Finite R S] {a : S} {b : R}
    (hM : M ≤ nonZeroDivisors R) : Algebra.norm R a = b ↔
      (Algebra.norm Rₘ) ((algebraMap S Sₘ) a) = algebraMap R Rₘ b :=
  ⟨fun h ↦ h.symm ▸ Algebra.norm_localization _ M _, fun h ↦
    IsLocalization.injective Rₘ hM <| h.symm ▸ (Algebra.norm_localization R M a).symm⟩

/-- Let `S` be an extension of `R` and `Rₘ Sₘ` be localizations at `M` of `R S` respectively.
Then the trace of `a : Sₘ` over `Rₘ` is the trace of `a : S` over `R` if `S` is free as `R`-module.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NormTrace/Variantea500eb67384b82df548f28509cf53a7f9bf3cd6022221f9833f900764be4b47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NormTrace/Variantea500eb67384b82df548f28509cf53a7f9bf3cd6022221f9833f900764be4b47.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49947e279844a45f5bbc30dd87c0dc701ade7e2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
