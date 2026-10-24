# Ncount_eq_im_halfContour

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81548e1e7a17365f261fff763ed955ceca997060",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2fb61b04-c4bf-b5ae-955c-b074575a9be7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf84cc34-0fe9-d951-968a-ef63b29c025b",
  "kind": "theorem",
  "lexical_name": "Ncount_eq_im_halfContour",
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
  "slug": "ncount-eq-im-halfcontour--5156161a88f3f589e300e65f",
  "source": {
    "blob": "81548e1e7a17365f261fff763ed955ceca997060",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 142,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5156161a88f3f589e300e65f3ed76dc15343a82881585a65d523dfa96802637e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf84cc34-0fe9-d951-968a-ef63b29c025b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ncount_eq_im_halfContour (hF2 : XiDerivZerosInStrip) (hs : XiDerivSeam) {T₁ T₂ : ℝ}
    (h12 : T₁ ≤ T₂) (hg₁ : GoodHeight T₁) (hg₂ : GoodHeight T₂) :
    (Ncount T₁ T₂ : ℝ)
      = (1 / Real.pi) * (Zeta23.RvM.halfContour (logDeriv xiDeriv) T₁ T₂).im :=
  GenericRvM.natCast_eq_im_halfContour (rectangleIntegral'_logDeriv_xiDeriv_eq_Ncount hF2 hs h12 hg₁ hg₂)
    (rectangleIntegral_logDeriv_xiDeriv_eq_halfContour hg₁ hg₂)

end ZeroCount
end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81548e1e7a17365f261fff763ed955ceca997060` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
