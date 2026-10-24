# LogDerivZetaLogSquaredBoundSmallt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eef72819-9177-9f15-33b8-3c6d6c26b305",
  "kind": "theorem",
  "lexical_name": "LogDerivZetaLogSquaredBoundSmallt",
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
  "slug": "logderivzetalogsquaredboundsmallt--94360cd306eaabf1cedd5bdc",
  "source": {
    "blob": "4174ed82a0b4c9ac6a8ada5434aab619353c11ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1833,
    "line": 1794,
    "path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94360cd306eaabf1cedd5bdc474b428ed667a2069a09e771e64d350dda5d49e3",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eef72819-9177-9f15-33b8-3c6d6c26b305`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1794–1833.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LogDerivZetaLogSquaredBoundSmallt : ∃ (C : ℝ) (Cnonneg : C ≥ 0),
    ∀ (σ t T : ℝ) (Tpos: T > 0),
    |t| ≤ T →
        σ = 1 - F / Real.log T →
            ‖ζ' (σ + t * I) / ζ (σ + t * I)‖ ≤ C * Real.log (2 + T) ^ 2 := by
    sorry



blueprint_comment /--
From here out we closely follow our previous proof of the Medium PNT and we modify it
using our new estimate in Theorem \ref{LogDerivZetaUniformLogSquaredBound}.
Recall Definition \ref{SmoothedChebyshev}; for fixed $\varepsilon>0$
and a bump function $\nu$ supported on $[1/2,2]$ we have
$$\psi_\varepsilon(X)
  =\frac{1}{2\pi i}\int_{(\sigma)}\left(-\frac{\zeta'}{\zeta}(s)\right)
  \,\mathcal{M}(\tilde{1}_\varepsilon)(s)\,X^s\,ds$$
where $\sigma=1+1/\log X$. Let $T>3$ be a large constant to be chosen later,
and we take $\sigma'=1-\delta_T/3=1-F/\log T$ with $F$ coming from
Theorem \ref{LogDerivZetaUniformLogSquaredBound}. We integrate along the $\sigma$ vertical line,
and we pull contours  accumulating the pole at $s=1$ when we integrate along the curves
\begin{itemize}
    \item $I_1$: $\sigma-i\infty$ to $\sigma-iT$
    \item $I_2$: $\sigma'-iT$ to $\sigma-iT$
    \item $I_3$: $\sigma'-iT$ to $\sigma'+iT$
    \item $I_4$: $\sigma'+iT$ to $\sigma+iT$
    \item $I_5$: $\sigma+iT$ to $\sigma+i\infty$.
\end{itemize}
-/



@[blueprint
  (title := "I1New")
  (statement := /--
    Let
    $$I_1(\nu,\varepsilon,X,T)=
      \frac{1}{2\pi i}\int_{-\infty}^{-T}\left(-\frac{\zeta'}{\zeta}(\sigma+it)\right)
      \,\mathcal{M}(\tilde{1}_\varepsilon)(\sigma+it)\,X^{\sigma+it}\,dt.$$
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean#L1794).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4174ed82a0b4c9ac6a8ada5434aab619353c11ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
