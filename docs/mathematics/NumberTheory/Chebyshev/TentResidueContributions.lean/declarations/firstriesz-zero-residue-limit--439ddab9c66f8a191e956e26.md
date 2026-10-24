# firstRiesz_zero_residue_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67e56830-24a0-d8f6-0e85-d6b30a8a831e",
  "kind": "theorem",
  "lexical_name": "firstRiesz_zero_residue_limit",
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
  "slug": "firstriesz-zero-residue-limit--439ddab9c66f8a191e956e26",
  "source": {
    "blob": "f10859cd98a604d76eaa8edcc8e8ec4a7178cefa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 68,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentResidueContributions.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:439ddab9c66f8a191e956e269b41212607c7c4cd979dfa8b9f7e8ad0cd3553ac",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentResidueContributions.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67e56830-24a0-d8f6-0e85-d6b30a8a831e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstRiesz_zero_residue_limit (u : ℝ) (z : ZeroPoint) :
    Tendsto (fun s => (s - z.1) * (-logDeriv riemannZeta s * firstRieszKernel u s))
      (𝓝[≠] z.1) (𝓝 (-(multiplicity z : ℂ) * firstRieszKernel u z.1)) := by
  have hs1 : z.1 + 1 ≠ 0 := by
    intro he
    have hr := congrArg Complex.re he
    have hpos := (point_mem_strip z).1
    simp only [Complex.add_re, Complex.one_re, Complex.zero_re] at hr
    linarith
  exact canonical_zero_weighted_limit z (firstRieszKernel u)
    (continuousAt_firstRieszKernel u z.1 z.2.ne_zero hs1)

/-- The actual zeta pole gives the positive quadratic term of the Riesz source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentResidueContributions.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentResidueContributions.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f10859cd98a604d76eaa8edcc8e8ec4a7178cefa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
