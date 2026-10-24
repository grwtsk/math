# hasWeightedSummatoryBound_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:278b8478-5f52-5f91-6d13-c9c9196d4bd6",
  "kind": "theorem",
  "lexical_name": "hasWeightedSummatoryBound_mono",
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
  "slug": "hasweightedsummatorybound-mono--e40635a7e5b36738c1eb4960",
  "source": {
    "blob": "9c3cc148db1574f0a5af2c687479f07d4d158aeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 61,
    "path": "GRWTSK/Analysis/WeightedSummatory/Variant0914380ffeef073a4281b84a8c0f435a7111e2c191534a67c874afa5ab12aef6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e40635a7e5b36738c1eb496047c894e61ed1aa5d9b2cdde954c9aaf438ca9f58",
  "verification": {
    "reference": "docs/verification/Analysis/WeightedSummatory/Variant0914380ffeef073a4281b84a8c0f435a7111e2c191534a67c874afa5ab12aef6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:278b8478-5f52-5f91-6d13-c9c9196d4bd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasWeightedSummatoryBound_mono
    {σ τ : ℝ} {F : ℕ → ℂ}
    (hF : HasWeightedSummatoryBound σ F) (hστ : σ ≤ τ) :
    HasWeightedSummatoryBound τ F :=
  hF.mono_exponent hστ

end

end Surface.Core.DirichletGRH

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/WeightedSummatory/Variant0914380ffeef073a4281b84a8c0f435a7111e2c191534a67c874afa5ab12aef6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/WeightedSummatory/Variant0914380ffeef073a4281b84a8c0f435a7111e2c191534a67c874afa5ab12aef6.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c3cc148db1574f0a5af2c687479f07d4d158aeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
