# nonbijective_adapter_not_flow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6536491c-0735-71f1-4220-e73f1402d2ea",
  "kind": "theorem",
  "lexical_name": "nonbijective_adapter_not_flow",
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
  "slug": "nonbijective-adapter-not-flow--40bc06b84e2f87005d14f31c",
  "source": {
    "blob": "1c4a5aef431bb63927ccc64602aeaa5920d11e07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 25,
    "path": "GRWTSK/Algebra/LinearAlgebra/Morphism/Variante4d3d048d9aea597cca54fa838b498807ba26216f28eaa860e47c4a262317711.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40bc06b84e2f87005d14f31c88c9c555aff2ec4d8ad9d5e7683aaf2e01258d80",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Morphism/Variante4d3d048d9aea597cca54fa838b498807ba26216f28eaa860e47c4a262317711.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6536491c-0735-71f1-4220-e73f1402d2ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonbijective_adapter_not_flow
    (M : BinaryLogicMatrixEndomorphism rows cols) :
    ¬ Function.Bijective M.map ->
      ¬ ∃ F : BinaryLogicMatrixFlow rows cols, F.forward = M.map := by
  intro hnot h
  rcases h with ⟨F, hF⟩
  apply hnot
  rw [← hF]
  exact BinaryLogicMatrixFlow.blmFlow_forward_bijective F

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Morphism/Variante4d3d048d9aea597cca54fa838b498807ba26216f28eaa860e47c4a262317711.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Morphism/Variante4d3d048d9aea597cca54fa838b498807ba26216f28eaa860e47c4a262317711.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c4a5aef431bb63927ccc64602aeaa5920d11e07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
