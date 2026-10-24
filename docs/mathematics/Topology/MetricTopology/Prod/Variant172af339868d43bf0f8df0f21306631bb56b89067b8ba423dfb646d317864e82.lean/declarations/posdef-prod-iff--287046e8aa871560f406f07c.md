# posDef_prod_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:511c3ecb-13f3-e28d-5d5a-0f72403c01b3",
  "kind": "theorem",
  "lexical_name": "posDef_prod_iff",
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
  "slug": "posdef-prod-iff--287046e8aa871560f406f07c",
  "source": {
    "blob": "85145a662825a20d01bfa6902b9668f204968ddc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 165,
    "path": "GRWTSK/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:287046e8aa871560f406f07c2e7e8cac4912862d0563202515eca5a3ffcda442",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:511c3ecb-13f3-e28d-5d5a-0f72403c01b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem posDef_prod_iff [PartialOrder P] [AddLeftMono P]
    {Q₁ : QuadraticMap R M₁ P} {Q₂ : QuadraticMap R M₂ P} :
    (Q₁.prod Q₂).PosDef ↔ Q₁.PosDef ∧ Q₂.PosDef := by
  simp_rw [posDef_iff_nonneg, nonneg_prod_iff]
  constructor
  · rintro ⟨⟨hle₁, hle₂⟩, ha⟩
    obtain ⟨ha₁, ha₂⟩ := anisotropic_of_prod ha
    exact ⟨⟨hle₁, ha₁⟩, ⟨hle₂, ha₂⟩⟩
  · rintro ⟨⟨hle₁, ha₁⟩, ⟨hle₂, ha₂⟩⟩
    refine ⟨⟨hle₁, hle₂⟩, ?_⟩
    rintro ⟨x₁, x₂⟩ (hx : Q₁ x₁ + Q₂ x₂ = 0)
    rw [add_eq_zero_iff_of_nonneg (hle₁ x₁) (hle₂ x₂), ha₁.eq_zero_iff, ha₂.eq_zero_iff] at hx
    rwa [Prod.mk_eq_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Prod/Variant172af339868d43bf0f8df0f21306631bb56b89067b8ba423dfb646d317864e82.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85145a662825a20d01bfa6902b9668f204968ddc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
