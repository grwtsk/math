# ι_ne_algebraMap

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
      "line": 516,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9051cac6-76a2-c924-44aa-11d857ff5423",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f444f107-fe6c-bd1b-3c78-39decc9df5cb",
  "kind": "theorem",
  "lexical_name": "ι_ne_algebraMap",
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
  "slug": "ne-algebramap--1e17e613cbaf047e66550874",
  "source": {
    "blob": "adaf455b8afc87b4b6656d60d8d5a0b83ed5ea76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 516,
    "path": "GRWTSK/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e17e613cbaf047e66550874f96bb4bf26b160d9d551bd5b088c8981d28b8a49",
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

Occurrence: `result:f444f107-fe6c-bd1b-3c78-39decc9df5cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ι_ne_algebraMap [Nontrivial R] (x : X) (r : R) : ι R x ≠ algebraMap R _ r := fun h ↦ by
  let f0 : FreeAlgebra R X →ₐ[R] R := lift R 0
  let f1 : FreeAlgebra R X →ₐ[R] R := lift R 1
  have hf0 : f0 (ι R x) = 0 := lift_ι_apply _ _
  have hf1 : f1 (ι R x) = 1 := lift_ι_apply _ _
  rw [h, f0.commutes, Algebra.id.map_eq_self] at hf0
  rw [h, f1.commutes, Algebra.id.map_eq_self] at hf1
  exact zero_ne_one (hf0.symm.trans hf1)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adaf455b8afc87b4b6656d60d8d5a0b83ed5ea76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
