# contMDiffAt_vectorSpace_iff_contDiffAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "04032c452b9ab100e527882c7e8c5c111fdf32f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 461,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/8007251719575e92201bcd81a265489644b383eaf4489d5876d734ac7693c71b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df44785c-be46-d2bc-ce62-203f891481fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79500622-dea5-ebe0-7e21-4d22a86c5383",
  "kind": "lemma",
  "lexical_name": "contMDiffAt_vectorSpace_iff_contDiffAt",
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
  "slug": "contmdiffat-vectorspace-iff-contdiffat--21a50e81e97b69d92c9334b9",
  "source": {
    "blob": "04032c452b9ab100e527882c7e8c5c111fdf32f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 461,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Tangent/Variant8007251719575e92201bcd81a265489644b383eaf4489d5876d734ac7693c71b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21a50e81e97b69d92c9334b9166f3bc2eb88aa81c1b589e2a5f1898e6547ea3f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Tangent/Variant8007251719575e92201bcd81a265489644b383eaf4489d5876d734ac7693c71b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79500622-dea5-ebe0-7e21-4d22a86c5383`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma contMDiffAt_vectorSpace_iff_contDiffAt
    {V : Π (x : E), TangentSpace 𝓘(𝕜, E) x} {x : E} :
    ContMDiffAt 𝓘(𝕜, E) 𝓘(𝕜, E).tangent n (fun x ↦ (V x : TangentBundle 𝓘(𝕜, E) E)) x ↔
      ContDiffAt 𝕜 n V x := by
  simp only [← contMDiffWithinAt_univ, ← contDiffWithinAt_univ,
    contMDiffWithinAt_vectorSpace_iff_contDiffWithinAt]

/-- A vector field on a vector space is `C^n` in the manifold sense iff it is `C^n` in the vector
space sense. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Tangent/Variant8007251719575e92201bcd81a265489644b383eaf4489d5876d734ac7693c71b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Tangent/Variant8007251719575e92201bcd81a265489644b383eaf4489d5876d734ac7693c71b.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04032c452b9ab100e527882c7e8c5c111fdf32f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
