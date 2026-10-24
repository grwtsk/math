# coplanar_insert_iff_of_mem_affineSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14819d2553db9e28ffd8bab15558ed323f321102",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 670,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7eeb52d072d24fe65c17da10aead423e683dd37bff56f638c8d0b60afd6236dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ea3946d-0a77-164d-bc81-9c93572d774e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:498c0436-ccc0-4da8-46c2-5c817017e5d4",
  "kind": "theorem",
  "lexical_name": "coplanar_insert_iff_of_mem_affineSpan",
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
  "slug": "coplanar-insert-iff-of-mem-affinespan--7ea8d738bf681d6d90d90338",
  "source": {
    "blob": "14819d2553db9e28ffd8bab15558ed323f321102",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 685,
    "line": 670,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant7eeb52d072d24fe65c17da10aead423e683dd37bff56f638c8d0b60afd6236dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ea8d738bf681d6d90d903381c4b699ed90e1308d93787a814ce69593effbc08",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant7eeb52d072d24fe65c17da10aead423e683dd37bff56f638c8d0b60afd6236dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:498c0436-ccc0-4da8-46c2-5c817017e5d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 670–685.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coplanar_insert_iff_of_mem_affineSpan {s : Set P} {p : P} (h : p ∈ affineSpan k s) :
    Coplanar k (insert p s) ↔ Coplanar k s := by
  rw [Coplanar, Coplanar, vectorSpan_insert_eq_vectorSpan h]
#align coplanar_insert_iff_of_mem_affine_span coplanar_insert_iff_of_mem_affineSpan

end AffineSpace'

section DivisionRing

variable {k : Type*} {V : Type*} {P : Type*}

open AffineSubspace FiniteDimensional Module

variable [DivisionRing k] [AddCommGroup V] [Module k V] [AffineSpace V P]

/-- Adding a point to a finite-dimensional subspace increases the dimension by at most one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant7eeb52d072d24fe65c17da10aead423e683dd37bff56f638c8d0b60afd6236dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant7eeb52d072d24fe65c17da10aead423e683dd37bff56f638c8d0b60afd6236dd.lean#L670).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14819d2553db9e28ffd8bab15558ed323f321102` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
