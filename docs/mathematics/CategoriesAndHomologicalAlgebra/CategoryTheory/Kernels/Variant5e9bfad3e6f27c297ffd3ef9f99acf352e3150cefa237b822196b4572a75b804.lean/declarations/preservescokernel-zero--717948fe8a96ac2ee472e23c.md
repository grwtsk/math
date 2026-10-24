# preservesCokernel_zero'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a96a140b-272c-fba4-70fc-38db9c5ce6b4",
  "kind": "lemma",
  "lexical_name": "preservesCokernel_zero'",
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
  "slug": "preservescokernel-zero--717948fe8a96ac2ee472e23c",
  "source": {
    "blob": "eaa5c8a21b338d42fee05a9251cddf7af4dc61ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 330,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5e9bfad3e6f27c297ffd3ef9f99acf352e3150cefa237b822196b4572a75b804.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:717948fe8a96ac2ee472e23c26027e461cef34a77542e777967c4f59add9d5da",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5e9bfad3e6f27c297ffd3ef9f99acf352e3150cefa237b822196b4572a75b804.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a96a140b-272c-fba4-70fc-38db9c5ce6b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesCokernel_zero' (f : X ⟶ Y) (hf : f = 0) :
    PreservesColimit (parallelPair f 0) G := by
  rw [hf]
  infer_instance

section ZeroObject

variable [HasZeroObject C] [HasZeroObject D]

variable {X Y : C} (f : X ⟶ Y)

set_option backward.isDefEq.respectTransparency.types false in
/-- Mapping a `zeroKernelFork` of `f : X ⟶ Y` along a functor `G` that preserves zero morphisms
is isomorphic to the `zeroKernelFork` of `G.map f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5e9bfad3e6f27c297ffd3ef9f99acf352e3150cefa237b822196b4572a75b804.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5e9bfad3e6f27c297ffd3ef9f99acf352e3150cefa237b822196b4572a75b804.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eaa5c8a21b338d42fee05a9251cddf7af4dc61ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
