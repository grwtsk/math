# HSW.main_theorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2396c3c1-faf9-3360-9f2e-f7f3b727f9d5",
  "kind": "theorem",
  "lexical_name": "HSW.main_theorem",
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
  "slug": "hsw-main-theorem--d55f415c5e8d9250ee073d23",
  "source": {
    "blob": "acffa3bc6e5da34ae21791ce77849544f566e41f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaSummary/Varianta6d0f390f567a006f922cb567d9b0742cfd74087d81540e39eb7ad8cfc7f1f96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d55f415c5e8d9250ee073d23c052114ac48f7174fec8ca2d15add06e33838df1",
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

Occurrence: `result:2396c3c1-faf9-3360-9f2e-f7f3b727f9d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HSW.main_theorem : riemannZeta.Riemann_vonMangoldt_bound 0.1038 0.2573 8.3675 := sorry

@[blueprint
  "Hasanalizade-Shen-Wong-cor-1-2"
  (title := "Hasanalizade--Shen--Wong, Corollary 1.2")
  (statement := /--
    Following \cite{HSW2022}, Corollary~1.2, for $T\ge e$ one has
    \[
    \bigl|N(T)-\tfrac{T}{2\pi}\log\tfrac{T}{2\pi e}\bigr|
    \le 0.1038\log T+0.2573\log\log T+9.3675
    \]
    (no $7/8$ term in the main term).
  --/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaSummary/Varianta6d0f390f567a006f922cb567d9b0742cfd74087d81540e39eb7ad8cfc7f1f96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaSummary/Varianta6d0f390f567a006f922cb567d9b0742cfd74087d81540e39eb7ad8cfc7f1f96.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acffa3bc6e5da34ae21791ce77849544f566e41f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
