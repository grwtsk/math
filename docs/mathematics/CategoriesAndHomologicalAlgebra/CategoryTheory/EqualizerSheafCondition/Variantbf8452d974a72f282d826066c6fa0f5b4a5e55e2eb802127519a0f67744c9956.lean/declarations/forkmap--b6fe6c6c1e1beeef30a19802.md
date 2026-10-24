# forkMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d6788f2a9de120fef5404b4608c49872ad8fc93740c69898a6a9b37a3593d93",
  "kind": "def",
  "lexical_name": "forkMap",
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
  "slug": "forkmap--b6fe6c6c1e1beeef30a19802",
  "source": {
    "blob": "428a8a472e9710a9a160290b77d69f29ef55c617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 85,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6fe6c6c1e1beeef30a19802b89abb2253dac4aacee8ebf106be14f89ebf9e3b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d6788f2a9de120fef5404b4608c49872ad8fc93740c69898a6a9b37a3593d93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def forkMap : P.obj (op X) ⟶ FirstObj P R :=
  Pi.lift fun f => P.map f.2.1.op

/-!
This section establishes the equivalence between the sheaf condition of Equation (3) [MM92] and
the definition of `IsSheafFor`.
-/


namespace Sieve

/-- The rightmost object of the fork diagram of Equation (3) [MM92], which contains the data used
to check a family is compatible.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `428a8a472e9710a9a160290b77d69f29ef55c617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
