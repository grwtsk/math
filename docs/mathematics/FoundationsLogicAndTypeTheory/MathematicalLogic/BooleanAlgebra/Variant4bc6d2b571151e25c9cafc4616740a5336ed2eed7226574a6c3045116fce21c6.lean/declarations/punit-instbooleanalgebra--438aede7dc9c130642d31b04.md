# PUnit.instBooleanAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28bc93e4ec8968e1e1ab73c3c014df5e0b523866fa95baef276ddf4d93710aa4",
  "kind": "instance",
  "lexical_name": "PUnit.instBooleanAlgebra",
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
  "slug": "punit-instbooleanalgebra--438aede7dc9c130642d31b04",
  "source": {
    "blob": "a3be4e5ce2ad069071f651558c8022868f192d6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 812,
    "line": 796,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanAlgebra/Variant4bc6d2b571151e25c9cafc4616740a5336ed2eed7226574a6c3045116fce21c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:438aede7dc9c130642d31b04ebbc0d6bb184f9ca36fe29788a5c236111283279",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanAlgebra/Variant4bc6d2b571151e25c9cafc4616740a5336ed2eed7226574a6c3045116fce21c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28bc93e4ec8968e1e1ab73c3c014df5e0b523866fa95baef276ddf4d93710aa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 796–812.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance PUnit.instBooleanAlgebra : BooleanAlgebra PUnit where
  __ := PUnit.instBiheytingAlgebra
  le_sup_inf := by simp
  inf_compl_le_bot _ := trivial
  top_le_sup_compl _ := trivial

namespace DistribLattice

variable (α) [DistribLattice α]

/--
An alternative constructor for boolean algebras:
a distributive lattice that is complemented is a boolean algebra.

This is not an instance, because it creates data using choice.
-/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanAlgebra/Variant4bc6d2b571151e25c9cafc4616740a5336ed2eed7226574a6c3045116fce21c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanAlgebra/Variant4bc6d2b571151e25c9cafc4616740a5336ed2eed7226574a6c3045116fce21c6.lean#L796).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3be4e5ce2ad069071f651558c8022868f192d6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
