# StrictConcaveOn.ae_eq_const_or_lt_map_average

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30215ac6b692ff81b5048394b24d16028ca7bfc7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e132becb-4077-42da-199d-72a599a8fe2c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57e644ff-540f-6639-c947-226bf6080a1c",
  "kind": "theorem",
  "lexical_name": "StrictConcaveOn.ae_eq_const_or_lt_map_average",
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
  "slug": "strictconcaveon-ae-eq-const-or-lt-map-average--86f5eb3235198d29204c7124",
  "source": {
    "blob": "30215ac6b692ff81b5048394b24d16028ca7bfc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 295,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86f5eb3235198d29204c712410f3c0998b37ff36d0189f87d2803a96debb2e78",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57e644ff-540f-6639-c947-226bf6080a1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StrictConcaveOn.ae_eq_const_or_lt_map_average [IsFiniteMeasure μ]
    (hg : StrictConcaveOn ℝ s g) (hgc : ContinuousOn g s) (hsc : IsClosed s)
    (hfs : ∀ᵐ x ∂μ, f x ∈ s) (hfi : Integrable f μ) (hgi : Integrable (g ∘ f) μ) :
    f =ᵐ[μ] const α (⨍ x, f x ∂μ) ∨ (⨍ x, g (f x) ∂μ) < g (⨍ x, f x ∂μ) := by
  simpa only [Pi.neg_apply, average_neg, neg_lt_neg_iff] using
    hg.neg.ae_eq_const_or_map_average_lt hgc.neg hsc hfs hfi hgi.neg

/-- If `E` is a strictly convex normed space and `f : α → E` is a function such that `‖f x‖ ≤ C`
a.e., then either this function is a.e. equal to its average value, or the norm of its average value
is strictly less than `C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30215ac6b692ff81b5048394b24d16028ca7bfc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
