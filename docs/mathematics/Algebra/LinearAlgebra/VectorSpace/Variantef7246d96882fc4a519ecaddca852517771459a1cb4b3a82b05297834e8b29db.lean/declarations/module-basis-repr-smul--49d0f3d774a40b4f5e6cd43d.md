# Module.Basis.repr_smul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71c2b88c-24f3-669b-a740-827fe10d5adf",
  "kind": "theorem",
  "lexical_name": "Module.Basis.repr_smul'",
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
  "slug": "module-basis-repr-smul--49d0f3d774a40b4f5e6cd43d",
  "source": {
    "blob": "1a74966dc79a6db0a7ac8f33dd772941598e1df5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 219,
    "path": "GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variantef7246d96882fc4a519ecaddca852517771459a1cb4b3a82b05297834e8b29db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49d0f3d774a40b4f5e6cd43d95c544be7b23a59ab297f5a2ab90a3605b717921",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/VectorSpace/Variantef7246d96882fc4a519ecaddca852517771459a1cb4b3a82b05297834e8b29db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71c2b88c-24f3-669b-a740-827fe10d5adf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.Basis.repr_smul' (i : ι) (r : R) (s : S) :
    B.repr (algebraMap R S r * s) i = r * B.repr s i := by
  rw [← smul_eq_mul, ← smul_eq_mul, algebraMap_smul, map_smul, Finsupp.smul_apply]

end Algebra

namespace FreeAbelianGroup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/VectorSpace/Variantef7246d96882fc4a519ecaddca852517771459a1cb4b3a82b05297834e8b29db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variantef7246d96882fc4a519ecaddca852517771459a1cb4b3a82b05297834e8b29db.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a74966dc79a6db0a7ac8f33dd772941598e1df5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
