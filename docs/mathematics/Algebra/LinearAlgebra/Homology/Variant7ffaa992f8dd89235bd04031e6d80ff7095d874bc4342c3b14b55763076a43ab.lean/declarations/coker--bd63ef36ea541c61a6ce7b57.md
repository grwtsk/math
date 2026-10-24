# cokerπ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:add8789bce30d8aedca6f0a977f408f0dc56fc99c8c671742a8a615cf66a9381",
  "kind": "def",
  "lexical_name": "cokerπ",
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
  "slug": "coker--bd63ef36ea541c61a6ce7b57",
  "source": {
    "blob": "1c3dd63516697f110ca432c411e4e42f4bbfc0f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 70,
    "path": "GRWTSK/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd63ef36ea541c61a6ce7b5787b2289ef8669ced87948146abc18947d6468e7a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:add8789bce30d8aedca6f0a977f408f0dc56fc99c8c671742a8a615cf66a9381`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cokerπ : N ⟶ coker φ := ofHom <| ⟨Submodule.mkQ _, by tauto⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c3dd63516697f110ca432c411e4e42f4bbfc0f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
