# weightSpaceOfIsLieTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed41ac83601e5fadc9fed55c115017c1833ae3f48c2d39ecce6665d253ed7195",
  "kind": "def",
  "lexical_name": "weightSpaceOfIsLieTower",
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
  "slug": "weightspaceofislietower--7a8148d7c7756a13cc1267f8",
  "source": {
    "blob": "4ba513aa4cf1fef3433c9ff88010b3886aa84f45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 162,
    "path": "GRWTSK/Algebra/LinearAlgebra/LieTheorem/Variant59aff3e45dd1a41028bd4a0555ff271a02ebb0aacdfcb72bbae860fe439c8689.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a8148d7c7756a13cc1267f84a6ef4874bd8859c75fc606b20d7b5c70bc21f79",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LieTheorem/Variant59aff3e45dd1a41028bd4a0555ff271a02ebb0aacdfcb72bbae860fe439c8689.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed41ac83601e5fadc9fed55c115017c1833ae3f48c2d39ecce6665d253ed7195`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def weightSpaceOfIsLieTower (χ : A → R) : LieSubmodule R L V :=
  { toSubmodule := weightSpace V χ
    lie_mem {z v} hv := weightSpaceOfIsLieTower_aux χ z v hv }

end

section

variable {k : Type*} [Field k]
variable {L : Type*} [LieRing L] [LieAlgebra k L]
variable {V : Type*} [AddCommGroup V] [Module k V] [LieRingModule L V] [LieModule k L V]

variable [CharZero k] [Module.Finite k V]

set_option linter.style.whitespace false in -- manual alignment is not recognised
open Submodule in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LieTheorem/Variant59aff3e45dd1a41028bd4a0555ff271a02ebb0aacdfcb72bbae860fe439c8689.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LieTheorem/Variant59aff3e45dd1a41028bd4a0555ff271a02ebb0aacdfcb72bbae860fe439c8689.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ba513aa4cf1fef3433c9ff88010b3886aa84f45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
