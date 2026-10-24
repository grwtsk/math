# HSW.corollary_1_2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44cb71f8-7f71-0ac9-6b0b-bc8f6b86b578",
  "kind": "theorem",
  "lexical_name": "HSW.corollary_1_2",
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
  "slug": "hsw-corollary-1-2--96b85ff09ef7d5e21a802cf4",
  "source": {
    "blob": "acffa3bc6e5da34ae21791ce77849544f566e41f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaSummary/Varianta6d0f390f567a006f922cb567d9b0742cfd74087d81540e39eb7ad8cfc7f1f96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96b85ff09ef7d5e21a802cf47269a4ba2837e8e11a8e59d9027d846a4ccba401",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaSummary/Varianta6d0f390f567a006f922cb567d9b0742cfd74087d81540e39eb7ad8cfc7f1f96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44cb71f8-7f71-0ac9-6b0b-bc8f6b86b578`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HSW.corollary_1_2 :
    ∀ T ≥ (Real.exp 1),
      |riemannZeta.N T - (T / (2 * Real.pi) * Real.log (T / (2 * Real.pi)) - T / (2 * Real.pi))| ≤
        0.1038 * Real.log T + 0.2573 * Real.log (Real.log T) + 9.3675 := by
  sorry

@[blueprint
  "mt_theorem_1"
  (title := "MT Theorem 1")
  (statement := /--
    Following \cite{MT2015}, Theorem~1, one has a classical zero-free region with
    $R = 5.573412$.
  -/)
  (uses := ["classical-zero-free-region"])
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaSummary/Varianta6d0f390f567a006f922cb567d9b0742cfd74087d81540e39eb7ad8cfc7f1f96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaSummary/Varianta6d0f390f567a006f922cb567d9b0742cfd74087d81540e39eb7ad8cfc7f1f96.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acffa3bc6e5da34ae21791ce77849544f566e41f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
