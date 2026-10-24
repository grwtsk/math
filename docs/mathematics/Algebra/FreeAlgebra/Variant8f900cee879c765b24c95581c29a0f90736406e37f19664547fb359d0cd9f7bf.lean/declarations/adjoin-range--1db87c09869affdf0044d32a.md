# adjoin_range_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "adaf455b8afc87b4b6656d60d8d5a0b83ed5ea76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 571,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:107a7a0a-d3b2-6442-2c03-a3e9e43a411c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a05bc785-e321-bbf2-fa55-f661eb314b9d",
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
  "slug": "adjoin-range--1db87c09869affdf0044d32a",
  "source": {
    "blob": "adaf455b8afc87b4b6656d60d8d5a0b83ed5ea76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 571,
    "path": "GRWTSK/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1db87c09869affdf0044d32ad4498c8a8c3b6ae106383c589e2a733ee7a4fb5e",
  "verification": {
    "reference": "docs/verification/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a05bc785-e321-bbf2-fa55-f661eb314b9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 571–582.

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

[Verification target and public status](../../../../../verification/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean#L571).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adaf455b8afc87b4b6656d60d8d5a0b83ed5ea76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
