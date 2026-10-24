# Algebra.traceMatrix_localizationLocalization

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
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc5f58fcd44fcdac433849e9f831a165a780aa08c3ef265b16ff44668fc800dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:336090dc-be37-3019-7905-604a2640d57c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc047599-cf6d-dee7-def2-8b228f6bc99e",
  "kind": "theorem",
  "lexical_name": "Algebra.traceMatrix_localizationLocalization",
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
  "slug": "algebra-tracematrix-localizationlocalization--979bf846611d84a94cfcf472",
  "source": {
    "blob": "9b3751bda99272157cf88c7979aa496cca68e2a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 100,
    "path": "GRWTSK/Algebra/NormTrace/Variantbc5f58fcd44fcdac433849e9f831a165a780aa08c3ef265b16ff44668fc800dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:979bf846611d84a94cfcf472c09bd21be2abe00b479f9819e5ae6db877122f0c",
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

Occurrence: `result:fc047599-cf6d-dee7-def2-8b228f6bc99e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Algebra.traceMatrix_localizationLocalization (b : Basis ι R S) :
    Algebra.traceMatrix Rₘ (b.localizationLocalization Rₘ M Sₘ) =
      (algebraMap R Rₘ).mapMatrix (Algebra.traceMatrix R b) := by
  have : Module.Finite R S := Module.Finite.of_basis b
  have : Module.Free R S := Module.Free.of_basis b
  ext i j : 2
  simp_rw [RingHom.mapMatrix_apply, Matrix.map_apply, traceMatrix_apply, traceForm_apply,
    Basis.localizationLocalization_apply, ← map_mul]
  exact Algebra.trace_localization R M _

/-- Let `S` be an extension of `R` and `Rₘ Sₘ` be localizations at `M` of `R S` respectively. Let
`b` be a `R`-basis of `S`. Then discriminant of the `Rₘ`-basis of `Sₘ` induced by `b` is the
discriminant of `b`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NormTrace/Variantbc5f58fcd44fcdac433849e9f831a165a780aa08c3ef265b16ff44668fc800dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NormTrace/Variantbc5f58fcd44fcdac433849e9f831a165a780aa08c3ef265b16ff44668fc800dc.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b3751bda99272157cf88c7979aa496cca68e2a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
