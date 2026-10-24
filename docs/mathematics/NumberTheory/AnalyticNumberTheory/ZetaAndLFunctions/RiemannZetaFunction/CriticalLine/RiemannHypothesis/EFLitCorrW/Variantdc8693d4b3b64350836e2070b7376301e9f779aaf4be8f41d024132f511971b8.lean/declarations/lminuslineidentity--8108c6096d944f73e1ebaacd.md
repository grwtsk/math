# LminusLineIdentity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1decbe33174e91b2753469564d0a9873df8841b3b8820aebc3455efff3127f0a",
  "kind": "def",
  "lexical_name": "LminusLineIdentity",
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
  "slug": "lminuslineidentity--8108c6096d944f73e1ebaacd",
  "source": {
    "blob": "c40cd97eea4265f12e0caae05ce057939bbf868e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFLitCorrW/Variantdc8693d4b3b64350836e2070b7376301e9f779aaf4be8f41d024132f511971b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8108c6096d944f73e1ebaacdb27b6c382135e0bc8b2d855e9190f8324da9aa43",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFLitCorrW/Variantdc8693d4b3b64350836e2070b7376301e9f779aaf4be8f41d024132f511971b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1decbe33174e91b2753469564d0a9873df8841b3b8820aebc3455efff3127f0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LminusLineIdentity (c : ℝ) : Prop :=
  ∀ (k : ℝ → ℂ), ContDiff ℝ 2 k → HasCompactSupport k →
    Integrable (fun t : ℝ => (Hfn k ((c:ℂ) + t * I) + Hfn k (1 - c - t * I))
        * (Lfn ((c:ℂ) + t * I) - L2 ((c:ℂ) + t * I))) ∧
    (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, (Hfn k ((c:ℂ) + t * I) + Hfn k (1 - c - t * I))
        * (Lfn ((c:ℂ) + t * I) - L2 ((c:ℂ) + t * I)))
      = (1/2 : ℂ) * (Hfn k 0 + Hfn k 1)

/-- The E₂ facts on the whole line Re s = c (for the chosen c). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFLitCorrW/Variantdc8693d4b3b64350836e2070b7376301e9f779aaf4be8f41d024132f511971b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFLitCorrW/Variantdc8693d4b3b64350836e2070b7376301e9f779aaf4be8f41d024132f511971b8.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c40cd97eea4265f12e0caae05ce057939bbf868e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
