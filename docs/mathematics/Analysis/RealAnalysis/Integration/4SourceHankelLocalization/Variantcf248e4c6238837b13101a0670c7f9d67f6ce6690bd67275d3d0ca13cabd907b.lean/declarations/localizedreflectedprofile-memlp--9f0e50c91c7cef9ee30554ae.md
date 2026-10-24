# localizedReflectedProfile_memLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2290973a-e00e-3e9c-1879-fccf2a247e62",
  "kind": "theorem",
  "lexical_name": "localizedReflectedProfile_memLp",
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
  "slug": "localizedreflectedprofile-memlp--9f0e50c91c7cef9ee30554ae",
  "source": {
    "blob": "390bafa19f023a8cb6faa922f7caf7ce15c6cdd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 142,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variantcf248e4c6238837b13101a0670c7f9d67f6ce6690bd67275d3d0ca13cabd907b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f0e50c91c7cef9ee30554ae1de55ac60e8659a143482e5ec4bb162018142753",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variantcf248e4c6238837b13101a0670c7f9d67f6ce6690bd67275d3d0ca13cabd907b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2290973a-e00e-3e9c-1879-fccf2a247e62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localizedReflectedProfile_memLp {A : ℝ} (hA : 0 < A)
    (B : ℕ) (t : Finset ℕ) (d : ℕ → ℝ) :
    MemLp (localizedReflectedProfile A B t d) 2 volume :=
  (reflectedProfile_memLp hA t d).indicator (overlapWindow_measurable A B)

/-- The localized state retains its actual finite coefficients, without renormalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variantcf248e4c6238837b13101a0670c7f9d67f6ce6690bd67275d3d0ca13cabd907b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variantcf248e4c6238837b13101a0670c7f9d67f6ce6690bd67275d3d0ca13cabd907b.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `390bafa19f023a8cb6faa922f7caf7ce15c6cdd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
