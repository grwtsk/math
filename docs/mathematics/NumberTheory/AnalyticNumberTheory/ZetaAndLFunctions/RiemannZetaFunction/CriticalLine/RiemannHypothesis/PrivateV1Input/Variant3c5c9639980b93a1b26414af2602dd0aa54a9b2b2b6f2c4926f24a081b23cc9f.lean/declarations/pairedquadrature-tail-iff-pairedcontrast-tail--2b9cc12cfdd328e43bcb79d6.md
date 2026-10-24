# pairedQuadrature_tail_iff_pairedContrast_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af262541ccf6b15458d1756a6aca79e9ffdcbf68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c5c9639980b93a1b26414af2602dd0aa54a9b2b2b6f2c4926f24a081b23cc9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c525233-e5f5-4f9f-d424-c4e818458895",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eda009de-db1c-556c-841e-b41f37e21f19",
  "kind": "theorem",
  "lexical_name": "pairedQuadrature_tail_iff_pairedContrast_tail",
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
  "slug": "pairedquadrature-tail-iff-pairedcontrast-tail--2b9cc12cfdd328e43bcb79d6",
  "source": {
    "blob": "af262541ccf6b15458d1756a6aca79e9ffdcbf68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 135,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variant3c5c9639980b93a1b26414af2602dd0aa54a9b2b2b6f2c4926f24a081b23cc9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b9cc12cfdd328e43bcb79d6282fe943ee7f86c0ffa03aed30ec740fd7b5bcdd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variant3c5c9639980b93a1b26414af2602dd0aa54a9b2b2b6f2c4926f24a081b23cc9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eda009de-db1c-556c-841e-b41f37e21f19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedQuadrature_tail_iff_pairedContrast_tail :
    PairedPrimeQuadratureTailLowerBound ↔ PairedContrastTailLowerBound := by
  constructor
  · rintro ⟨C, hC0, R, hR, h⟩
    refine ⟨C, hC0, R, hR, ?_⟩
    intro A hRA
    rw [pairedErrorContrast_eq_prime_quadrature (hR.trans hRA)]
    linarith [h A hRA]
  · rintro ⟨C, hC0, R, hR, h⟩
    refine ⟨C, hC0, R, hR, ?_⟩
    intro A hRA
    have hc := h A hRA
    rw [pairedErrorContrast_eq_prime_quadrature (hR.trans hRA)] at hc
    linarith

/-- This reaches the unchanged residual frontier conditionally, without proving either tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variant3c5c9639980b93a1b26414af2602dd0aa54a9b2b2b6f2c4926f24a081b23cc9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variant3c5c9639980b93a1b26414af2602dd0aa54a9b2b2b6f2c4926f24a081b23cc9f.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af262541ccf6b15458d1756a6aca79e9ffdcbf68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
