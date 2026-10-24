# tendstoLocallyUniformlyOn_iterate_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b061977332ab52ddcdccbf8cab989528b2d73e16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1ddde3c9c489ef7b51a209466f629898dc30242cfa4a3f5c5e1ff9cf0b21fe3e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:638f6973-5e50-997e-a72d-774df968811a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bdbe7b43-5250-3ec5-bef2-490286356a0e",
  "kind": "theorem",
  "lexical_name": "tendstoLocallyUniformlyOn_iterate_deriv",
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
  "slug": "tendstolocallyuniformlyon-iterate-deriv--c1d8084da31ec2162eadec73",
  "source": {
    "blob": "b061977332ab52ddcdccbf8cab989528b2d73e16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant1ddde3c9c489ef7b51a209466f629898dc30242cfa4a3f5c5e1ff9cf0b21fe3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1d8084da31ec2162eadec7346ae262d2a3ea515cfcfac779f590f6e8479a0ec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant1ddde3c9c489ef7b51a209466f629898dc30242cfa4a3f5c5e1ff9cf0b21fe3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdbe7b43-5250-3ec5-bef2-490286356a0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoLocallyUniformlyOn_iterate_deriv
    {ι : Type*} {φ : Filter ι} [φ.NeBot]
    {F : ι → ℂ → ℂ} {f : ℂ → ℂ}
    (hF : ∀ i, AnalyticOnNhd ℂ (F i) Set.univ)
    (hlim : TendstoLocallyUniformlyOn F f φ Set.univ) (n : ℕ) :
    TendstoLocallyUniformlyOn
      (fun i => (deriv^[n]) (F i)) ((deriv^[n]) f) φ Set.univ := by
  induction n with
  | zero => simpa using hlim
  | succ n ih =>
      have hdiff : ∀ᶠ i in φ, DifferentiableOn ℂ ((deriv^[n]) (F i)) Set.univ :=
        Eventually.of_forall fun i => (hF i).iterated_deriv n |>.differentiableOn
      have hd := ih.deriv hdiff isOpen_univ
      simpa only [Function.iterate_succ_apply] using hd

/-- Pointwise convergence of every iterated derivative at the origin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant1ddde3c9c489ef7b51a209466f629898dc30242cfa4a3f5c5e1ff9cf0b21fe3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant1ddde3c9c489ef7b51a209466f629898dc30242cfa4a3f5c5e1ff9cf0b21fe3e.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b061977332ab52ddcdccbf8cab989528b2d73e16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
