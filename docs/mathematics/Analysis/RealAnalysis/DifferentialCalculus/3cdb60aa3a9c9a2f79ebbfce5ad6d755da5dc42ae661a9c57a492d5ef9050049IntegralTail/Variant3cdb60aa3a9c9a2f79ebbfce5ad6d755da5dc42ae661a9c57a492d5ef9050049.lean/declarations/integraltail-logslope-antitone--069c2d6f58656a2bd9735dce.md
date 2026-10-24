# integralTail_logSlope_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33a31a1cd448e348ec087e2748ef668ba1934921",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ef9254b-0a86-5c56-ac56-d43e49b13b57",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93fd0967-8fd6-0a7b-0646-97643e2b95e2",
  "kind": "theorem",
  "lexical_name": "integralTail_logSlope_antitone",
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
  "slug": "integraltail-logslope-antitone--069c2d6f58656a2bd9735dce",
  "source": {
    "blob": "33a31a1cd448e348ec087e2748ef668ba1934921",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 126,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:069c2d6f58656a2bd9735dce2b4a3fec5b7e1c7c924d09f1e5e5ed5b1ae7e495",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93fd0967-8fd6-0a7b-0646-97643e2b95e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integralTail_logSlope_antitone {f : ℝ → ℝ} (hd : Differentiable ℝ f)
    (hi : IntegrableOn f (Ici (0 : ℝ)))
    (hdi : IntegrableOn (deriv f) (Ici (0 : ℝ)))
    (hz : Tendsto f atTop (𝓝 0))
    (hp : ∀ u : ℝ, 0 ≤ u → 0 < f u)
    (ha : AntitoneOn (fun u => deriv f u / f u) (Ici (0 : ℝ))) :
    AntitoneOn (fun u => deriv (integralTail f) u / integralTail f u) (Ici (0 : ℝ)) := by
  intro t ht u hu htu
  dsimp only
  rw [(hasDerivAt_integralTail hd.continuous hi u).deriv,
    (hasDerivAt_integralTail hd.continuous hi t).deriv]
  have h := (div_le_div_iff₀ (hp u hu) (hp t ht)).mp
    (integralTail_ratio_antitone hd hi hdi hz hp ha ht hu htu)
  apply (div_le_div_iff₀ (integralTail_positive hi hp hu)
    (integralTail_positive hi hp ht)).mpr
  nlinarith only [h]

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33a31a1cd448e348ec087e2748ef668ba1934921` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
