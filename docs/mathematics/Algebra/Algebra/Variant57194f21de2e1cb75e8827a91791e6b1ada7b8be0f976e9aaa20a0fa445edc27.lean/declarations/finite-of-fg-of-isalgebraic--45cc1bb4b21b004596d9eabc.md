# finite_of_fg_of_isAlgebraic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:531ea39d-5e7b-53fe-e8e5-9d00bced884d",
  "kind": "lemma",
  "lexical_name": "finite_of_fg_of_isAlgebraic",
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
  "slug": "finite-of-fg-of-isalgebraic--45cc1bb4b21b004596d9eabc",
  "source": {
    "blob": "b8208c1f4c906953a65d0c8fb471b5200d6a70fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 102,
    "path": "GRWTSK/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45cc1bb4b21b004596d9eabc810446e6085c13a7fab855fd1b6765b76d1a4868",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:531ea39d-5e7b-53fe-e8e5-9d00bced884d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_of_fg_of_isAlgebraic
    (h : IntermediateField.FG (⊤ : IntermediateField F E)) [Algebra.IsAlgebraic F E] :
    Module.Finite F E := by
  obtain ⟨s, hs⟩ := h
  have : Algebra.FiniteType F E := by
    use s
    rw [← IntermediateField.adjoin_algebraic_toSubalgebra
      (fun x hx ↦ Algebra.IsAlgebraic.isAlgebraic x)]
    simpa [← IntermediateField.toSubalgebra_inj] using hs
  exact Algebra.IsIntegral.finite

section Supremum

variable {K L : Type*} [Field K] [Field L] [Algebra K L] (E1 E2 : IntermediateField K L)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8208c1f4c906953a65d0c8fb471b5200d6a70fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
