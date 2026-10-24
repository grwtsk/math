# adjoin_range_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3927881c-aa77-09cd-ae6e-2adb2c1ce621",
  "kind": "theorem",
  "lexical_name": "adjoin_range_ι",
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
  "slug": "adjoin-range--65f50dcec4ccafa0fc10a650",
  "source": {
    "blob": "bd943abbe92ee6047d1e6b0dd4b7b9d5c3ed873a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 579,
    "path": "GRWTSK/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65f50dcec4ccafa0fc10a650024ccf23ac862f12d367ccb4cbc0734024031695",
  "verification": {
    "reference": "docs/verification/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3927881c-aa77-09cd-ae6e-2adb2c1ce621`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 579–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_range_ι : Algebra.adjoin R (Set.range (ι R : X → FreeAlgebra R X)) = ⊤ := by
  set S := Algebra.adjoin R (Set.range (ι R : X → FreeAlgebra R X))
  refine top_unique fun x hx => ?_; clear hx
  induction x with
  | grade0 => exact S.algebraMap_mem _
  | add x y hx hy => exact S.add_mem hx hy
  | mul x y hx hy => exact S.mul_mem hx hy
  | grade1 x => exact Algebra.subset_adjoin (Set.mem_range_self _)

variable {A : Type*} [Semiring A] [Algebra R A]

/-- Noncommutative version of `Algebra.adjoin_range_eq_range_aeval`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean#L579).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd943abbe92ee6047d1e6b0dd4b7b9d5c3ed873a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
