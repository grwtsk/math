# primitiveWeilLaplace_autocorrelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8a9ab4bc74fd781cfbb3ce8374fb15fb9c44d48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c59b06b5-650f-b3ac-5358-584be15db172",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:742e4eb4-7638-0d41-5945-67126f21d23d",
  "kind": "theorem",
  "lexical_name": "primitiveWeilLaplace_autocorrelation",
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
  "slug": "primitiveweillaplace-autocorrelation--d2215976fd919066f308ff2e",
  "source": {
    "blob": "a8a9ab4bc74fd781cfbb3ce8374fb15fb9c44d48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 243,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2215976fd919066f308ff2e4daa4e668113fc81797d103c766657ea0898d444",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:742e4eb4-7638-0d41-5945-67126f21d23d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitiveWeilLaplace_autocorrelation
    (g : PrimitiveWeilTestFunction) (s : ℂ) :
    primitiveWeilLaplace g.autocorrelation s =
      primitiveWeilLaplace g s *
        conj (primitiveWeilLaplace g (1 - conj s)) := by
  unfold primitiveWeilLaplace
  simp_rw [primitiveWeilLaplaceIntegrand_autocorrelation]
  rw [MeasureTheory.integral_convolution complexMultiplication
    (integrable_primitiveWeilLaplaceIntegrand g s)
    (integrable_primitiveWeilLaplaceIntegrand g.star s)]
  have hstar := primitiveWeilLaplace_star g s
  unfold primitiveWeilLaplace at hstar
  rw [hstar]
  rfl

end PrimitiveWeilTestFunction

end

end Surface.Core.Weil
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8a9ab4bc74fd781cfbb3ce8374fb15fb9c44d48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
