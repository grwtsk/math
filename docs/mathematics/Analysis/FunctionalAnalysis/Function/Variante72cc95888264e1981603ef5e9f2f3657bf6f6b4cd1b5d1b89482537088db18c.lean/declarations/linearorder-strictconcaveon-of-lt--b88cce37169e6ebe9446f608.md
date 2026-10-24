# LinearOrder.strictConcaveOn_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b77ec526-ad91-5150-3177-823e880e5d8a",
  "kind": "theorem",
  "lexical_name": "LinearOrder.strictConcaveOn_of_lt",
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
  "slug": "linearorder-strictconcaveon-of-lt--b88cce37169e6ebe9446f608",
  "source": {
    "blob": "f96a57d1735eca51c569b7d61324680304915de3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 465,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Function/Variante72cc95888264e1981603ef5e9f2f3657bf6f6b4cd1b5d1b89482537088db18c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b88cce37169e6ebe9446f6080d8db540072fd2520c1fab35b46c2aff84d2817b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Function/Variante72cc95888264e1981603ef5e9f2f3657bf6f6b4cd1b5d1b89482537088db18c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b77ec526-ad91-5150-3177-823e880e5d8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearOrder.strictConcaveOn_of_lt (hs : Convex 𝕜 s)
    (hf : ∀ ⦃x⦄, x ∈ s → ∀ ⦃y⦄, y ∈ s → x < y → ∀ ⦃a b : 𝕜⦄, 0 < a → 0 < b → a + b = 1 →
      a • f x + b • f y < f (a • x + b • y)) :
    StrictConcaveOn 𝕜 s f :=
  @LinearOrder.strictConvexOn_of_lt _ _ βᵒᵈ _ _ _ _ _ _ _ _ hs hf
#align linear_order.strict_concave_on_of_lt LinearOrder.strictConcaveOn_of_lt

end LinearOrder

end Module

section Module

variable [Module 𝕜 E] [Module 𝕜 F] [SMul 𝕜 β]

/-- If `g` is convex on `s`, so is `(f ∘ g)` on `f ⁻¹' s` for a linear `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Function/Variante72cc95888264e1981603ef5e9f2f3657bf6f6b4cd1b5d1b89482537088db18c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Function/Variante72cc95888264e1981603ef5e9f2f3657bf6f6b4cd1b5d1b89482537088db18c.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f96a57d1735eca51c569b7d61324680304915de3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
