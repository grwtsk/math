# HasDerivAtFilter.prodMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63ab8d8f-f12a-ef55-6bde-d7d92cb40d65",
  "kind": "theorem",
  "lexical_name": "HasDerivAtFilter.prodMk",
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
  "slug": "hasderivatfilter-prodmk--313789e6246cf7d3f97617d6",
  "source": {
    "blob": "1c5b6a1aab2e94e29aa8368360c001c16c0c77f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:313789e6246cf7d3f97617d67a01a4972102e15de0031c2821d868faa4161f46",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63ab8d8f-f12a-ef55-6bde-d7d92cb40d65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem HasDerivAtFilter.prodMk (hf₁ : HasDerivAtFilter f₁ f₁' x L)
    (hf₂ : HasDerivAtFilter f₂ f₂' x L) : HasDerivAtFilter (fun x => (f₁ x, f₂ x)) (f₁', f₂') x L :=
  hf₁.prodMk hf₂

@[deprecated (since := "2025-03-09")]
alias HasDerivAtFilter.prod := HasDerivAtFilter.prodMk

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c5b6a1aab2e94e29aa8368360c001c16c0c77f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
