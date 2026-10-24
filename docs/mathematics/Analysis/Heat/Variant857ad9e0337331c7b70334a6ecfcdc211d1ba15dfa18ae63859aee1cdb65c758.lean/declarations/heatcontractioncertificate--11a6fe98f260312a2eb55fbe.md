# HeatContractionCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:418d9b0c4a054ad0909df5a74dba3c1ccf17ffefad057abec8a7ae9538ee0421",
  "kind": "structure",
  "lexical_name": "HeatContractionCertificate",
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
  "slug": "heatcontractioncertificate--11a6fe98f260312a2eb55fbe",
  "source": {
    "blob": "fb8d503f9f61dfa3527c69ca765868ddb5afa229",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 70,
    "path": "GRWTSK/Analysis/Heat/Variant857ad9e0337331c7b70334a6ecfcdc211d1ba15dfa18ae63859aee1cdb65c758.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11a6fe98f260312a2eb55fbe5fb49d4bd0f61d4341239e0ae205ebf5a10c048c",
  "verification": {
    "reference": "docs/verification/Analysis/Heat/Variant857ad9e0337331c7b70334a6ecfcdc211d1ba15dfa18ae63859aee1cdb65c758.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:418d9b0c4a054ad0909df5a74dba3c1ccf17ffefad057abec8a7ae9538ee0421`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HeatContractionCertificate
    (dirac : FiniteOperator Index Index) where
  operatorNorm : FiniteOperator Index Index → ℝ
  operatorNorm_nonnegative : ∀ matrix, 0 ≤ operatorNorm matrix
  contractive : ∀ s : ℝ, 0 ≤ s → operatorNorm (heatDiffuser dirac s) ≤ 1

end DAF.Hilbert
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Heat/Variant857ad9e0337331c7b70334a6ecfcdc211d1ba15dfa18ae63859aee1cdb65c758.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Heat/Variant857ad9e0337331c7b70334a6ecfcdc211d1ba15dfa18ae63859aee1cdb65c758.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb8d503f9f61dfa3527c69ca765868ddb5afa229` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
