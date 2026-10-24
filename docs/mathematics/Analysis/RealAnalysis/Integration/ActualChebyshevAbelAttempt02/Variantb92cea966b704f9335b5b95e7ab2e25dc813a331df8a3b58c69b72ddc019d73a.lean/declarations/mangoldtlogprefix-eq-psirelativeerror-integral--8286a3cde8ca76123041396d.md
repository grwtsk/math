# mangoldtLogPrefix_eq_psiRelativeError_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb94b964-04df-be3c-d2d2-1994b127e3c8",
  "kind": "theorem",
  "lexical_name": "mangoldtLogPrefix_eq_psiRelativeError_integral",
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
  "slug": "mangoldtlogprefix-eq-psirelativeerror-integral--8286a3cde8ca76123041396d",
  "source": {
    "blob": "ccddc1edd5c8338a7d4cdddaf6404af304da79b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8286a3cde8ca76123041396d708a84a5b922c278748131899aab3a39733a0d12",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb94b964-04df-be3c-d2d2-1994b127e3c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtLogPrefix_eq_psiRelativeError_integral {t : ℝ} (ht : 0 ≤ t) :
    mangoldtLogPrefix t = 1+psiRelativeError t +
      ∫ u in Ioc (0:ℝ) t, (1+psiRelativeError u) := by
  rw [mangoldtLogPrefix, weightedMangoldt_eq_psi_add_integral
    (show 1 ≤ Real.exp t by simpa using Real.exp_le_exp.mpr ht),
    psi_integral_log_dictionary]
  unfold psiRelativeError
  rw [Real.exp_neg]
  ring

/-- Literal finite centering dictionary; the infinite centering equality remains a separate obligation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccddc1edd5c8338a7d4cdddaf6404af304da79b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
