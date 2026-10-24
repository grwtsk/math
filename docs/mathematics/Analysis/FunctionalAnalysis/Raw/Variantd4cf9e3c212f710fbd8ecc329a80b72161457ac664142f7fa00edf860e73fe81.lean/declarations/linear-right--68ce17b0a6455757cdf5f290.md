# linear_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4fad2cf-1adc-e751-8518-1e2748a99a5d",
  "kind": "theorem",
  "lexical_name": "linear_right",
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
  "slug": "linear-right--68ce17b0a6455757cdf5f290",
  "source": {
    "blob": "cbcb52da5a9e62f95c200779afd2b5afd9259fe4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 93,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68ce17b0a6455757cdf5f29037a865b28acdf0fa37a25354d269500c2bc16327",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4fad2cf-1adc-e751-8518-1e2748a99a5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linear_right
    (scalar : ℂ) (f g : Raw kernel) :
    Raw.inner kernel f (scalar • g) =
      scalar * Raw.inner kernel f g := by
  letI : PreInnerProductSpace.Core ℂ (Raw kernel) := core kernel
  exact InnerProductSpace.Core.inner_smul_right (𝕜 := ℂ) f g

/-- Additivity in the conjugate-linear slot. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbcb52da5a9e62f95c200779afd2b5afd9259fe4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
