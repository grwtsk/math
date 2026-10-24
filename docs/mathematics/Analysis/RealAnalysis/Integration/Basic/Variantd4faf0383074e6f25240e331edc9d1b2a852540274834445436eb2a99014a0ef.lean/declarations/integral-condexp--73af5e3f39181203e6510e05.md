# integral_condExp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8763115e603819c0ad349ec77bf287c998bb04d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b85834f5-06bb-4e3d-9b69-f3c99b5822a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9eb60e93-c368-2fda-c63b-b1dcef156eed",
  "kind": "theorem",
  "lexical_name": "integral_condExp",
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
  "slug": "integral-condexp--73af5e3f39181203e6510e05",
  "source": {
    "blob": "d8763115e603819c0ad349ec77bf287c998bb04d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 254,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73af5e3f39181203e6510e0598dda3220a5e3d62e55bbc2231e6c4accef85522",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9eb60e93-c368-2fda-c63b-b1dcef156eed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_condExp (hm : m ≤ m₀) [hμm : SigmaFinite (μ.trim hm)] :
    ∫ x, (μ[f|m]) x ∂μ = ∫ x, f x ∂μ := by
  by_cases hf : Integrable f μ
  · suffices ∫ x in Set.univ, (μ[f|m]) x ∂μ = ∫ x in Set.univ, f x ∂μ by
      simp_rw [setIntegral_univ] at this; exact this
    exact setIntegral_condExp hm hf .univ
  simp only [condExp_of_not_integrable hf, Pi.zero_apply, integral_zero, integral_undef hf]

@[deprecated (since := "2025-01-21")] alias integral_condexp := integral_condExp

/-- **Law of total probability** using `condExp` as conditional probability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8763115e603819c0ad349ec77bf287c998bb04d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
