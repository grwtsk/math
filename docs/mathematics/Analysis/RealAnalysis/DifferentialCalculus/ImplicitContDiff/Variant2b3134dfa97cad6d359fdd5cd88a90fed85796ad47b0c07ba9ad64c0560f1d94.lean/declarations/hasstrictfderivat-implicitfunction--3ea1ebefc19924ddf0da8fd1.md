# hasStrictFDerivAt_implicitFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bfe0eba-09da-b83d-3b75-7e5132b69f0e",
  "kind": "theorem",
  "lexical_name": "hasStrictFDerivAt_implicitFunction",
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
  "slug": "hasstrictfderivat-implicitfunction--3ea1ebefc19924ddf0da8fd1",
  "source": {
    "blob": "f1740a1b802e7d08d31af1170a192c05df337706",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant2b3134dfa97cad6d359fdd5cd88a90fed85796ad47b0c07ba9ad64c0560f1d94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ea1ebefc19924ddf0da8fd11b2c31bef47e3f4d2b6cc2b019e8df2d5d17d77f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant2b3134dfa97cad6d359fdd5cd88a90fed85796ad47b0c07ba9ad64c0560f1d94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bfe0eba-09da-b83d-3b75-7e5132b69f0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasStrictFDerivAt_implicitFunction
    (cdf : ContDiffAt 𝕜 n f u) (pn : n ≠ 0) (if₂ : (fderiv 𝕜 f u ∘L .inr 𝕜 E₁ E₂).IsInvertible) :
    HasStrictFDerivAt (cdf.implicitFunction pn if₂)
      (-(fderiv 𝕜 f u ∘L .inr 𝕜 E₁ E₂).inverse ∘L (fderiv 𝕜 f u ∘L .inl 𝕜 E₁ E₂)) u.1 :=
  (cdf.hasStrictFDerivAt pn).hasStrictFDerivAt_implicitFunctionOfProdDomain if₂

/-- If the implicit equation `f` is $C^n$ at `(u₁, u₂)`, then its implicit function `ψ` around `u₁`
is also $C^n$ at `u₁`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant2b3134dfa97cad6d359fdd5cd88a90fed85796ad47b0c07ba9ad64c0560f1d94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant2b3134dfa97cad6d359fdd5cd88a90fed85796ad47b0c07ba9ad64c0560f1d94.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1740a1b802e7d08d31af1170a192c05df337706` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
