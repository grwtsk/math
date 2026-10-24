# homotopicRel_iff_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73be82bd-f959-8fb8-cf44-4ce6b0e8697a",
  "kind": "theorem",
  "lexical_name": "homotopicRel_iff_comp",
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
  "slug": "homotopicrel-iff-comp--72404879586ebcd7cb8d60c5",
  "source": {
    "blob": "563550223778da73d8509d3eb6f87cd99da7cae7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 335,
    "path": "GRWTSK/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72404879586ebcd7cb8d60c55b56727a51d170a4bce6e29548e7e741b8fb9852",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73be82bd-f959-8fb8-cf44-4ce6b0e8697a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homotopicRel_iff_comp [PreconnectedSpace A] {f₀ f₁ : C(A, E)} {S : Set A}
    (he : ∃ a ∈ S, f₀ a = f₁ a) : f₀.HomotopicRel f₁ S ↔
      (ContinuousMap.comp ⟨p, cov.continuous⟩ f₀).HomotopicRel (.comp ⟨p, cov.continuous⟩ f₁) S :=
  ⟨fun ⟨F⟩ ↦ ⟨F.compContinuousMap _⟩, fun ⟨F⟩ ↦ ⟨cov.liftHomotopyRel F he rfl rfl⟩⟩

/-- Lifting two paths that are homotopic relative to {0,1}
  starting from the same point also ends up in the same point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `563550223778da73d8509d3eb6f87cd99da7cae7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
