# instIsBoundedSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:197f2aaf442201aa85f627975cd37a3e9b3c58c809eae82657b78579757e955c",
  "kind": "instance",
  "lexical_name": "instIsBoundedSMul",
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
  "slug": "instisboundedsmul--cd0b5b23370ff61424fa69ae",
  "source": {
    "blob": "e1f0f7c4a292a1673c78326b4b09a8e389d55ab0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 475,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantb14cca8c1c20b98feda4bb99e3e44e619b9dcd28f25cf658b7215cfbd0fcc511.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd0b5b23370ff61424fa69ae3b7fef2a4371e5c8e1312b6b77629588775c4953",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantb14cca8c1c20b98feda4bb99e3e44e619b9dcd28f25cf658b7215cfbd0fcc511.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:197f2aaf442201aa85f627975cd37a3e9b3c58c809eae82657b78579757e955c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsBoundedSMul [Fact (1 ≤ p)] : IsBoundedSMul 𝕜 (Lp E p μ) :=
  IsBoundedSMul.of_enorm_smul_le fun r f => by
    simpa only [eLpNorm_congr_ae (coeFn_smul _ _), enorm_def]
      using eLpNorm_const_smul_le (c := r) (f := f) (p := p)

end IsBoundedSMul

section NormedSpace

variable {𝕜 : Type*} [NormedField 𝕜] [NormedSpace 𝕜 E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantb14cca8c1c20b98feda4bb99e3e44e619b9dcd28f25cf658b7215cfbd0fcc511.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantb14cca8c1c20b98feda4bb99e3e44e619b9dcd28f25cf658b7215cfbd0fcc511.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1f0f7c4a292a1673c78326b4b09a8e389d55ab0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
