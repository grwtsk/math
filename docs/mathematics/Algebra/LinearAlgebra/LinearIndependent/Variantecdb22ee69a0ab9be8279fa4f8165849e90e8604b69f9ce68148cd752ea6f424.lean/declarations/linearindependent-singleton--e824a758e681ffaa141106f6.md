# linearIndependent_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc277c7f295fa2fc967631040e7664f9c29100f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ecdb22ee69a0ab9be8279fa4f8165849e90e8604b69f9ce68148cd752ea6f424.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf4d89ad-aafd-a158-c2e1-2336c410fa4f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52d301e5-25d0-3357-8719-2dc0d0faa65c",
  "kind": "theorem",
  "lexical_name": "linearIndependent_singleton",
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
  "slug": "linearindependent-singleton--e824a758e681ffaa141106f6",
  "source": {
    "blob": "fc277c7f295fa2fc967631040e7664f9c29100f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1212,
    "line": 1187,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearIndependent/Variantecdb22ee69a0ab9be8279fa4f8165849e90e8604b69f9ce68148cd752ea6f424.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e824a758e681ffaa141106f6528ac9ffa26e5ba93d4cd4c16d6e3b22aa4d5cd1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearIndependent/Variantecdb22ee69a0ab9be8279fa4f8165849e90e8604b69f9ce68148cd752ea6f424.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52d301e5-25d0-3357-8719-2dc0d0faa65c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1187–1212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_singleton {x : M} (hx : x ≠ 0) :
    LinearIndependent R (fun x => x : ({x} : Set M) → M) :=
  linearIndependent_unique ((↑) : ({x} : Set M) → M) hx
#align linear_independent_singleton linearIndependent_singleton

end Nontrivial

/-!
### Properties which require `DivisionRing K`

These can be considered generalizations of properties of linear independence in vector spaces.
-/


section Module

variable [DivisionRing K] [AddCommGroup V] [AddCommGroup V']

variable [Module K V] [Module K V']

variable {v : ι → V} {s t : Set V} {x y z : V}

open Submodule

/- TODO: some of the following proofs can generalized with a zero_ne_one predicate type class
   (instead of a data containing type class) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearIndependent/Variantecdb22ee69a0ab9be8279fa4f8165849e90e8604b69f9ce68148cd752ea6f424.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearIndependent/Variantecdb22ee69a0ab9be8279fa4f8165849e90e8604b69f9ce68148cd752ea6f424.lean#L1187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc277c7f295fa2fc967631040e7664f9c29100f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
