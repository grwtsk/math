# completedRiemannZeta₀_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0927a3f2-2d0b-3989-c8f6-3dec468b5134",
  "kind": "theorem",
  "lexical_name": "completedRiemannZeta₀_one_sub",
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
  "slug": "completedriemannzeta-one-sub--e4aa99f5e4bba3964c237370",
  "source": {
    "blob": "1373554596e115d890861eb6abf16a6bcc05dcb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 103,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4aa99f5e4bba3964c237370455d0ff8133b128a7ff52ec8a8891f0a6aac83ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0927a3f2-2d0b-3989-c8f6-3dec468b5134`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completedRiemannZeta₀_one_sub (s : ℂ) :
    completedRiemannZeta₀ (1 - s) = completedRiemannZeta₀ s := by
  rw [← completedHurwitzZetaEven₀_zero, ← completedCosZeta₀_zero, completedHurwitzZetaEven₀_one_sub]

/-- Riemann zeta functional equation, formulated for `Λ`: for any complex `s` we have
`Λ (1 - s) = Λ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1373554596e115d890861eb6abf16a6bcc05dcb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
