# frequently_eq_iff_eventuallyEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47fd4419-afb0-e9b7-0d01-dd5600d7a476",
  "kind": "theorem",
  "lexical_name": "frequently_eq_iff_eventuallyEq",
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
  "slug": "frequently-eq-iff-eventuallyeq--888b2183e6f9146b959aeb69",
  "source": {
    "blob": "b8311a48194dfb183775268ec7675cebc40f49f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IsolatedZeros/Variantb45905a463241c26bcc57c334c97528f8077aa6dc0995c221ab67e83b074e882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:888b2183e6f9146b959aeb69ae872892ce0e61884e3f9262b0aa802a1138fc9a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/IsolatedZeros/Variantb45905a463241c26bcc57c334c97528f8077aa6dc0995c221ab67e83b074e882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47fd4419-afb0-e9b7-0d01-dd5600d7a476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frequently_eq_iff_eventuallyEq (hf : MeromorphicAt f x) (hg : MeromorphicAt g x) :
    (∃ᶠ z in 𝓝[≠] x, f z = g z) ↔ f =ᶠ[𝓝[≠] x] g := by
  rw [eventuallyEq_iff_sub, ← (hf.sub hg).frequently_zero_iff_eventuallyEq_zero]
  simp_rw [Pi.sub_apply, sub_eq_zero]

/--
Formulation of `MeromorphicAt.eventuallyEq_zero_nhdsNE_of_eventuallyEq_zero_codiscreteWithin` as an
identity principle: Let `U` be a subset of `𝕜` and assume that `x ∈ U` is not an isolated point of
`U`. If function `f` and `g` are meromorphic at `x` and agree along a subset that is codiscrete
within `U`, then `f` and `g` agree in a punctured neighbourhood of `f`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/IsolatedZeros/Variantb45905a463241c26bcc57c334c97528f8077aa6dc0995c221ab67e83b074e882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IsolatedZeros/Variantb45905a463241c26bcc57c334c97528f8077aa6dc0995c221ab67e83b074e882.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8311a48194dfb183775268ec7675cebc40f49f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
