# SurjOn.inter_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50f51afb-a307-25d0-e3ad-e88a56331caf",
  "kind": "theorem",
  "lexical_name": "SurjOn.inter_inter",
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
  "slug": "surjon-inter-inter--a87d42444dfd79ec2c997d3d",
  "source": {
    "blob": "46e2a10e5d0830a596ce203c699da765e9d73425",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 496,
    "line": 489,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variant13b249ea517763860721e5fe0fd6daa092f77dcfb888908cb510c6437a2868dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a87d42444dfd79ec2c997d3d1a763efc16683dd29e94bd4b447ce5558f7e8948",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variant13b249ea517763860721e5fe0fd6daa092f77dcfb888908cb510c6437a2868dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50f51afb-a307-25d0-e3ad-e88a56331caf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–496.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SurjOn.inter_inter (h₁ : SurjOn f s₁ t₁) (h₂ : SurjOn f s₂ t₂) (h : InjOn f (s₁ ∪ s₂)) :
    SurjOn f (s₁ ∩ s₂) (t₁ ∩ t₂) := by
  intro y hy
  rcases h₁ hy.1 with ⟨x₁, hx₁, rfl⟩
  rcases h₂ hy.2 with ⟨x₂, hx₂, heq⟩
  obtain rfl : x₁ = x₂ := h (Or.inl hx₁) (Or.inr hx₂) heq.symm
  exact mem_image_of_mem f ⟨hx₁, hx₂⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variant13b249ea517763860721e5fe0fd6daa092f77dcfb888908cb510c6437a2868dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variant13b249ea517763860721e5fe0fd6daa092f77dcfb888908cb510c6437a2868dd.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46e2a10e5d0830a596ce203c699da765e9d73425` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
