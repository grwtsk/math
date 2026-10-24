# implicitToOpenPartialHomeomorph_apply_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fddf4ea3-9eda-2091-32f2-9e47799ed15a",
  "kind": "theorem",
  "lexical_name": "implicitToOpenPartialHomeomorph_apply_ker",
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
  "slug": "implicittoopenpartialhomeomorph-apply-ker--c4d366d8974edf1af7e45758",
  "source": {
    "blob": "e01ca0232714d36187f0400ac0ac31d0f61b4340",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 483,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd4f6a2ab67e4763fb409f9552d47d71aeb32b8a7422b06746b6f76ec2cca3114.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4d366d8974edf1af7e457587abe2aec9c27d3a2c70f4babc26c6d6100f952bf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd4f6a2ab67e4763fb409f9552d47d71aeb32b8a7422b06746b6f76ec2cca3114.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fddf4ea3-9eda-2091-32f2-9e47799ed15a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem implicitToOpenPartialHomeomorph_apply_ker (hf : HasStrictFDerivAt f f' a)
    (hf' : f'.range = ⊤) (y : f'.ker) :
    hf.implicitToOpenPartialHomeomorph f f' hf' (y + a) = (f (y + a), y) :=
  have := FiniteDimensional.complete 𝕜 F
  implicitToOpenPartialHomeomorphOfComplemented_apply_ker ..

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd4f6a2ab67e4763fb409f9552d47d71aeb32b8a7422b06746b6f76ec2cca3114.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd4f6a2ab67e4763fb409f9552d47d71aeb32b8a7422b06746b6f76ec2cca3114.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e01ca0232714d36187f0400ac0ac31d0f61b4340` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
