# LogDerivZetaHoloOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adfc7040-7a83-30d7-e4ec-af1ad92c4714",
  "kind": "lemma",
  "lexical_name": "LogDerivZetaHoloOn",
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
  "slug": "logderivzetaholoon--9a059acc49338b37c993bc5b",
  "source": {
    "blob": "abc3064379e29e75a5447a19e19b00c9cedea29e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3435,
    "line": 3409,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant4a9d4039598f653c7f2b142ec17aad5927c9f6ebdd73cfaa395284b174db329d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a059acc49338b37c993bc5b27d570bff6c9597ad248dc7b199a6618fbaddfce",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant4a9d4039598f653c7f2b142ec17aad5927c9f6ebdd73cfaa395284b174db329d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adfc7040-7a83-30d7-e4ec-af1ad92c4714`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3409–3435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LogDerivZetaHoloOn {S : Set ℂ} (s_ne_one : 1 ∉ S)
    (nonzero : ∀ s ∈ S, ζ s ≠ 0) :
    HolomorphicOn (fun s ↦ ζ' s / ζ s) S := by
  apply DifferentiableOn.div _ _ nonzero <;> intro s hs <;> apply DifferentiableAt.differentiableWithinAt
  · apply differentiableAt_deriv_riemannZeta
    exact ne_of_mem_of_not_mem hs s_ne_one
  · apply differentiableAt_riemannZeta
    exact ne_of_mem_of_not_mem hs s_ne_one

blueprint_comment /--
We now prove that there's an absolute constant $\sigma_0$ so that $\zeta'/\zeta$ is holomorphic on
a rectangle $[\sigma_2,2] \times_{ℂ} [-3,3] \setminus \{1\}$.
-/
@[blueprint
  (title := "LogDerivZetaHolcSmallT")
  (statement := /--
  There is a $\sigma_2 < 1$ so that the function
  $$
  \frac {\zeta'}{\zeta}(s)
  $$
  is holomorphic on $\{ \sigma_2 \le \Re s \le 2, |\Im s| \le 3 \} \setminus \{1\}$.
  -/)
  (proof := /--
  The derivative of $\zeta$ is holomorphic away from $s=1$; the denominator $\zeta(s)$ is nonzero
  in this range by Lemma \ref{ZetaNoZerosInBox}.
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant4a9d4039598f653c7f2b142ec17aad5927c9f6ebdd73cfaa395284b174db329d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant4a9d4039598f653c7f2b142ec17aad5927c9f6ebdd73cfaa395284b174db329d.lean#L3409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abc3064379e29e75a5447a19e19b00c9cedea29e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
