# isBounded_image2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70b48809-28d0-0e89-b21e-251e8136320f",
  "kind": "theorem",
  "lexical_name": "isBounded_image2",
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
  "slug": "isbounded-image2--053a1b4bc294734d0cb84084",
  "source": {
    "blob": "978aca7545aa610fe53d30981e3be0981cb2e193",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 274,
    "path": "GRWTSK/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:053a1b4bc294734d0cb8408492d6d7b4857cdce3b5fefbe509033c46bc8aeb0f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70b48809-28d0-0e89-b21e-251e8136320f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBounded_image2 (f : α → β → γ) {K₁ K₂ : ℝ≥0} {s : Set α} {t : Set β}
    (hs : Bornology.IsBounded s) (ht : Bornology.IsBounded t)
    (hf₁ : ∀ b ∈ t, LipschitzOnWith K₁ (fun a => f a b) s)
    (hf₂ : ∀ a ∈ s, LipschitzOnWith K₂ (f a) t) : Bornology.IsBounded (Set.image2 f s t) :=
  Metric.isBounded_iff_ediam_ne_top.2 <|
    ne_top_of_le_ne_top
      (ENNReal.add_ne_top.mpr
        ⟨ENNReal.mul_ne_top ENNReal.coe_ne_top hs.ediam_ne_top,
          ENNReal.mul_ne_top ENNReal.coe_ne_top ht.ediam_ne_top⟩)
      (ediam_image2_le _ _ _ hf₁ hf₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `978aca7545aa610fe53d30981e3be0981cb2e193` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
