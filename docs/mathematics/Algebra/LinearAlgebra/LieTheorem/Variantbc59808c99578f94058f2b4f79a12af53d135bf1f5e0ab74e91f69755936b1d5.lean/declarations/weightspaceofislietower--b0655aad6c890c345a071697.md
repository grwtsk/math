# weightSpaceOfIsLieTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89042e6f63a45f50e1714236033d919450dba08b61496bc75744d29e0d3c9625",
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
  "slug": "weightspaceofislietower--b0655aad6c890c345a071697",
  "source": {
    "blob": "ff610a06736b8cf85acc6f37fe115355160e72f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 154,
    "path": "GRWTSK/Algebra/LinearAlgebra/LieTheorem/Variantbc59808c99578f94058f2b4f79a12af53d135bf1f5e0ab74e91f69755936b1d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0655aad6c890c345a0716977886c356e94d96f8ecbc269ca8a96b8914a7d99f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LieTheorem/Variantbc59808c99578f94058f2b4f79a12af53d135bf1f5e0ab74e91f69755936b1d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89042e6f63a45f50e1714236033d919450dba08b61496bc75744d29e0d3c9625`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–168.

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

open Submodule in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LieTheorem/Variantbc59808c99578f94058f2b4f79a12af53d135bf1f5e0ab74e91f69755936b1d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LieTheorem/Variantbc59808c99578f94058f2b4f79a12af53d135bf1f5e0ab74e91f69755936b1d5.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff610a06736b8cf85acc6f37fe115355160e72f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
