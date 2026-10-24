# memSobolev_zero_iff_exists_fourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b39e3350-ecc8-46c1-519e-a68989a7c622",
  "kind": "theorem",
  "lexical_name": "memSobolev_zero_iff_exists_fourier",
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
  "slug": "memsobolev-zero-iff-exists-fourier--c3893f9098e10868e7101a83",
  "source": {
    "blob": "f7dea53e1e27ae29a1e6671eb8790031e379be67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 245,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3893f9098e10868e7101a83dc4468e4028fd57c3d250828e1e71c63db4551c2",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b39e3350-ecc8-46c1-519e-a68989a7c622`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem memSobolev_zero_iff_exists_fourier {f : 𝓢'(E, F)} :
    MemSobolev 0 2 f ↔ ∃ (f' : Lp F 2 (volume : Measure E)), 𝓕 f = f' := by
  simp [memSobolev_iff_exists_smulLeftCLM_fourier]

/-- The Fourier transform of a Sobolev function of order `s` with `s > d / 2` can be represented by
a `L1` function.

This is the main calculation of the Sobolev embedding theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7dea53e1e27ae29a1e6671eb8790031e379be67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
