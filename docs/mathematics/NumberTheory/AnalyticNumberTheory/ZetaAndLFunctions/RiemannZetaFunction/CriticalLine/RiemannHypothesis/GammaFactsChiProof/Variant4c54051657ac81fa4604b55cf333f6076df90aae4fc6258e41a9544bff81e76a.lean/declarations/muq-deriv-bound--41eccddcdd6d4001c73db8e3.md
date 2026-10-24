# muq_deriv_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffde98d45c12e4fe47fc916d8fb3b1ec5fd77b0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 352,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5b1006d-21a6-1598-a645-6df45ba07d61",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e13e959-8a09-8722-e0e8-ce7ed9ce680b",
  "kind": "theorem",
  "lexical_name": "muq_deriv_bound",
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
  "slug": "muq-deriv-bound--41eccddcdd6d4001c73db8e3",
  "source": {
    "blob": "ffde98d45c12e4fe47fc916d8fb3b1ec5fd77b0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 352,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41eccddcdd6d4001c73db8e36d5aef56c2d96d36fd805ef4b0ddf96931d7f8ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e13e959-8a09-8722-e0e8-ce7ed9ce680b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem muq_deriv_bound (hκ : κ ≤ 1) : ∃ C : ℝ, ∀ τ : ℝ, 1 ≤ |τ| → |deriv (muq κ q) τ| ≤ C / |τ| :=
  ⟨24 / Real.pi, muq_deriv_bound_const hκ⟩

/-! ### The bundle -/

/-- H-Γ(χ) from the two integral fields (supplied by Zeta23/ThmE/IntMuChi.lean from
`muq_stirling` + continuity by the FTC computations with log(qτ/2π)). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffde98d45c12e4fe47fc916d8fb3b1ec5fd77b0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
