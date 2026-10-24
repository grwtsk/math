# powerMap_four_V

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6dd0701c-5aca-f2b7-2826-155a35a20535",
  "kind": "theorem",
  "lexical_name": "powerMap_four_V",
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
  "slug": "powermap-four-v--fc289fa20a79f055c463a949",
  "source": {
    "blob": "9c52a1085984477c11991a40854fffc0e35111ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 786,
    "line": 777,
    "path": "GRWTSK/Algebra/LinearAlgebra/GrothendieckPower/Variantb86a236608dc19f2f20589efd41ffc4760291589b484f48ad94386268ce17892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc289fa20a79f055c463a949031943774797b818b9a93f3b2021e666a4287645",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GrothendieckPower/Variantb86a236608dc19f2f20589efd41ffc4760291589b484f48ad94386268ce17892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dd0701c-5aca-f2b7-2826-155a35a20535`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 777–786.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem powerMap_four_V : powerMap 4 V = 0 := by
  rw [powerMap_V, geom_sum_four]
  have hv : V ^ 2 = aA ^ 2 * V := by
    simp [aA, map_pow]
  have hab : aA ^ 2 * bA + 2 = 0 := by
    obtain ⟨_, _, hab, _, _⟩ := mapped_relations (AlgHom.id R A)
    simpa using hab
  rw [show V * (2 * bA * V) = 2 * bA * V ^ 2 by ring, hv]
  linear_combination 2 * V * hab - V * four_eq_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GrothendieckPower/Variantb86a236608dc19f2f20589efd41ffc4760291589b484f48ad94386268ce17892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GrothendieckPower/Variantb86a236608dc19f2f20589efd41ffc4760291589b484f48ad94386268ce17892.lean#L777).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c52a1085984477c11991a40854fffc0e35111ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
