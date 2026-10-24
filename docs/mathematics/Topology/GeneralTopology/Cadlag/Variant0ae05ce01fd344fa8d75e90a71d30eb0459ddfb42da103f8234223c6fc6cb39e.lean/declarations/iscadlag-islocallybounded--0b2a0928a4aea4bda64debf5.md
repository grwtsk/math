# IsCadlag.isLocallyBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fac4d00d-e45b-0117-ee59-66d67516a36a",
  "kind": "lemma",
  "lexical_name": "IsCadlag.isLocallyBounded",
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
  "slug": "iscadlag-islocallybounded--0b2a0928a4aea4bda64debf5",
  "source": {
    "blob": "a287fb2b9edbb2e4aa65fa767c9b5f44212e0f8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 185,
    "path": "GRWTSK/Topology/GeneralTopology/Cadlag/Variant0ae05ce01fd344fa8d75e90a71d30eb0459ddfb42da103f8234223c6fc6cb39e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b2a0928a4aea4bda64debf55737015e756756ef1f47a72299f20d1aff4e8768",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Cadlag/Variant0ae05ce01fd344fa8d75e90a71d30eb0459ddfb42da103f8234223c6fc6cb39e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fac4d00d-e45b-0117-ee59-66d67516a36a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCadlag.isLocallyBounded (hf : IsCadlag f) (x : X) : ∃ t ∈ 𝓝 x, IsBounded (f '' t) := by
  obtain ⟨l, hl⟩ := hf.2 x
  obtain ⟨-, ⟨⟨A, ⟨hA, ⟨W, hW, rfl⟩⟩⟩, hAW⟩⟩ := Metric.exists_isBounded_image_of_tendsto hl
  obtain ⟨-, ⟨⟨B, ⟨hB, ⟨R, hR, rfl⟩⟩⟩, hBR⟩⟩ :=
    Metric.exists_isBounded_image_of_tendsto (hf.1 x).tendsto
  refine ⟨A ∩ B, inter_mem hA hB, ?_⟩
  apply ((hAW.union hBR).union (isBounded_singleton (x := f x))).subset
  rintro _ ⟨y, ⟨hyL, hyR⟩ , rfl⟩
  rcases lt_trichotomy y x with (hlt | heq | hgt)
  · grind [hW hlt]
  · grind
  · grind [hR hgt]

/-- A càdlàg function maps compact sets to bounded sets. -/
@[to_dual /-- A càglàd function maps compact sets to bounded sets. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Cadlag/Variant0ae05ce01fd344fa8d75e90a71d30eb0459ddfb42da103f8234223c6fc6cb39e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Cadlag/Variant0ae05ce01fd344fa8d75e90a71d30eb0459ddfb42da103f8234223c6fc6cb39e.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a287fb2b9edbb2e4aa65fa767c9b5f44212e0f8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
