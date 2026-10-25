# FG.countable_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1686f24-fff3-aa5a-4a0e-8576fab8652a",
  "kind": "theorem",
  "lexical_name": "FG.countable_hom",
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
  "slug": "fg-countable-hom--3640e7f16a006edbc6cbee10",
  "source": {
    "blob": "b4a7653e4bfbc96f696b1aea32d818f40e91d59f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 231,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Variantb42c96f8d55f4068fd80e36969941df39b7981dbce20a7a39b3f3d1d8d796fa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3640e7f16a006edbc6cbee103411742719bf3f3c07c8e343d964b6349e2e3ef8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Variantb42c96f8d55f4068fd80e36969941df39b7981dbce20a7a39b3f3d1d8d796fa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1686f24-fff3-aa5a-4a0e-8576fab8652a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FG.countable_hom (N : Type*) [L.Structure N] [Countable N] (h : FG L M) :
    Countable (M →[L] N) := by
  let ⟨S, finite_S, closure_S⟩ := fg_iff.1 h
  let g : (M →[L] N) → (S → N) :=
    fun f ↦ f ∘ (↑)
  have g_inj : Function.Injective g := by
    intro f f' h
    apply Hom.eq_of_eqOn_dense closure_S
    intro x x_in_S
    exact congr_fun h ⟨x, x_in_S⟩
  have : Finite ↑S := (S.finite_coe_iff).2 finite_S
  exact Function.Embedding.countable ⟨g, g_inj⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Variantb42c96f8d55f4068fd80e36969941df39b7981dbce20a7a39b3f3d1d8d796fa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Variantb42c96f8d55f4068fd80e36969941df39b7981dbce20a7a39b3f3d1d8d796fa6.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4a7653e4bfbc96f696b1aea32d818f40e91d59f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
