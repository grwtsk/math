# ConcaveOn.le_map_centerMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc586281-64a6-545f-52fd-bdf13286422d",
  "kind": "theorem",
  "lexical_name": "ConcaveOn.le_map_centerMass",
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
  "slug": "concaveon-le-map-centermass--906155f1dee209685fcf948f",
  "source": {
    "blob": "aa3b396babf0ab664eef29767001286885bb0035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 69,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:906155f1dee209685fcf948f4136c144c537d3f439d1019e492136d5f651d83d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc586281-64a6-545f-52fd-bdf13286422d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ConcaveOn.le_map_centerMass (hf : ConcaveOn 𝕜 s f) (h₀ : ∀ i ∈ t, 0 ≤ w i)
    (h₁ : 0 < ∑ i ∈ t, w i) (hmem : ∀ i ∈ t, p i ∈ s) :
    t.centerMass w (f ∘ p) ≤ f (t.centerMass w p) :=
  ConvexOn.map_centerMass_le (β := βᵒᵈ) hf h₀ h₁ hmem

/-- Convex **Jensen's inequality**, `Finset.sum` version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa3b396babf0ab664eef29767001286885bb0035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
