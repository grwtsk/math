# analyticOn_taylorComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b07c5fb5-dbfd-a3c2-6a55-8401ab40167c",
  "kind": "theorem",
  "lexical_name": "analyticOn_taylorComp",
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
  "slug": "analyticon-taylorcomp--4781214d618405a04a4141f5",
  "source": {
    "blob": "f477fa6f2548668fcb691bac6d2cc395ee3964b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 906,
    "line": 886,
    "path": "GRWTSK/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4781214d618405a04a4141f5097752f209645b6aca893eb5ff27979fa1ed8c17",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b07c5fb5-dbfd-a3c2-6a55-8401ab40167c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 886–906.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analyticOn_taylorComp
    (hq : ∀ (n : ℕ), AnalyticOn 𝕜 (fun x ↦ q x n) t)
    (hp : ∀ n, AnalyticOn 𝕜 (fun x ↦ p x n) s) {f : E → F}
    (hf : AnalyticOn 𝕜 f s) (h : MapsTo f s t) (n : ℕ) :
    AnalyticOn 𝕜 (fun x ↦ (q (f x)).taylorComp (p x) n) s := by
  apply Finset.analyticOn_fun_sum _ (fun c _ ↦ ?_)
  let B := c.compAlongOrderedFinpartitionL 𝕜 E F G
  change AnalyticOn 𝕜
    ((fun p ↦ B p.1 p.2) ∘ (fun x ↦ (q (f x) c.length, fun m ↦ p x (c.partSize m)))) s
  apply B.analyticOnNhd_uncurry_of_multilinear.comp_analyticOn ?_ (mapsTo_univ _ _)
  apply AnalyticOn.prod
  · exact (hq c.length).comp hf h
  · exact AnalyticOn.pi (fun i ↦ hp _)

open OrderedFinpartition

/-- Composing two formal multilinear series `q` and `p` along an ordered partition extended by a
new atom to the left corresponds to applying `p 1` on the first coordinates, and the initial
ordered partition on the other coordinates.
This is one of the terms that appears when differentiating in the Faa di Bruno
formula, going from step `m` to step `m + 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean#L886).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f477fa6f2548668fcb691bac6d2cc395ee3964b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
