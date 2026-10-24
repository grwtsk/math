# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d9d3f10e9d58f5ee8965cc87e6a26c526419b8891407af8f3ced52656285647",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--c10a4292f8aed3a4a1efd4a5",
  "source": {
    "blob": "a888ac6edaf770370ee13a4ed23beb35695de63d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 9,
    "line": 6,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Da59269827796b6c35f0d335bc5f86d1a8885a0a6d82c9cd81cd58a92df8022aCheckPhase/Variantda59269827796b6c35f0d335bc5f86d1a8885a0a6d82c9cd81cd58a92df8022a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c10a4292f8aed3a4a1efd4a55ca8c637e961c3489da1c8bde42d295f9e4dba10",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Da59269827796b6c35f0d335bc5f86d1a8885a0a6d82c9cd81cd58a92df8022aCheckPhase/Variantda59269827796b6c35f0d335bc5f86d1a8885a0a6d82c9cd81cd58a92df8022a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d9d3f10e9d58f5ee8965cc87e6a26c526419b8891407af8f3ced52656285647`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6–9.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (k : ℕ) : IntegrableOn (fun t : ℝ => (thetaPhi t : ℂ) * (2 * (t : ℂ))^(2*k)) (Ioi (0:ℝ)) := by
  have h := thetaPhiExpMomentIntegrand_integrableOn (2*k) 0
  change Integrable (fun t : ℝ => (thetaPhi t : ℂ) * (2 * (t : ℂ))^(2*k) * Complex.exp (2 * 0 * (t:ℂ))) _ at h
  simpa only [mul_zero, zero_mul, Complex.exp_zero, mul_one, IntegrableOn] using h
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Da59269827796b6c35f0d335bc5f86d1a8885a0a6d82c9cd81cd58a92df8022aCheckPhase/Variantda59269827796b6c35f0d335bc5f86d1a8885a0a6d82c9cd81cd58a92df8022a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Da59269827796b6c35f0d335bc5f86d1a8885a0a6d82c9cd81cd58a92df8022aCheckPhase/Variantda59269827796b6c35f0d335bc5f86d1a8885a0a6d82c9cd81cd58a92df8022a.lean#L6).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a888ac6edaf770370ee13a4ed23beb35695de63d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
