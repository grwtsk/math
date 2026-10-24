# oddResidueDecay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47c0c0680cb81e4d4e6b9a9a730da7b03ee88063",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d74ad18571727b301ab0677db96a37a426533422375aed5b85671be93376f077.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2f6a11d-ceb0-372e-bfe3-9aec5581e0a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7561f35a-8ec1-631c-4404-4dcdb2d59412",
  "kind": "theorem",
  "lexical_name": "oddResidueDecay",
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
  "slug": "oddresiduedecay--1303a4f984b68b080ae2c862",
  "source": {
    "blob": "47c0c0680cb81e4d4e6b9a9a730da7b03ee88063",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 61,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/OddResidueDecay/Variantd74ad18571727b301ab0677db96a37a426533422375aed5b85671be93376f077.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1303a4f984b68b080ae2c8621c307cb4f3220cae1a5a298e0d4f75f15e090cfa",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/OddResidueDecay/Variantd74ad18571727b301ab0677db96a37a426533422375aed5b85671be93376f077.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7561f35a-8ec1-631c-4404-4dcdb2d59412`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oddResidueDecay
    {Algebra : Type u} {Hilbert : Type v}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℝ Hilbert]
    [FiniteDimensional ℝ Hilbert]
    {shell : SpectralOrbitShell Algebra Hilbert}
    (gap : CertifiedOddSpectralGap shell) :
    OddResidueDecayEstimate shell gap.spectralGap :=
  ⟨gap.spectralGap_positive, gap.heat_decay⟩

end

end Mathematics.NeuralDiffusion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/OddResidueDecay/Variantd74ad18571727b301ab0677db96a37a426533422375aed5b85671be93376f077.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/OddResidueDecay/Variantd74ad18571727b301ab0677db96a37a426533422375aed5b85671be93376f077.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47c0c0680cb81e4d4e6b9a9a730da7b03ee88063` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
