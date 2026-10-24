# upper_square_10_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fb52593-b60d-2b3d-f727-8255fa8cb820",
  "kind": "theorem",
  "lexical_name": "upper_square_10_eq",
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
  "slug": "upper-square-10-eq--af9a898e006b3c291d472c7b",
  "source": {
    "blob": "3d90666d0c20354c00f62e4cf5a515adce94a1e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 58,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperProductFiniteSigns/Variant3dbedb80e6859d6b59330a90e34e442626007930a00f46e898941a1164434030.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af9a898e006b3c291d472c7bb9a1f941f0e8a4ea1c5c5e73bd926d2d3948f791",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperProductFiniteSigns/Variant3dbedb80e6859d6b59330a90e34e442626007930a00f46e898941a1164434030.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fb52593-b60d-2b3d-f727-8255fa8cb820`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_square_10_eq (F : ℕ → ℝ) :
    (∑ i ∈ Ioc 5 10, ∑ j ∈ Ioc 5 10,
      (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ)*F (i*j)) =
      F 36 - 2*F 42 + F 49 + 2*F 60 - 2*F 70 + F 100 := by
  have hset : Ioc 5 10 = ({6, 7, 8, 9, 10} : Finset ℕ) := by decide
  norm_num [hset, mu6, mu7, mu8, mu9, mu10]
  ring

end
end UpperProductFiniteSignsScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperProductFiniteSigns/Variant3dbedb80e6859d6b59330a90e34e442626007930a00f46e898941a1164434030.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperProductFiniteSigns/Variant3dbedb80e6859d6b59330a90e34e442626007930a00f46e898941a1164434030.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d90666d0c20354c00f62e4cf5a515adce94a1e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
