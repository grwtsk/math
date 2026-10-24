# toMonoidHomMulEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b61541aa4fdc9d20264da97aaa71cb6dfe98cd416636cab963fe620dc7e66cb",
  "kind": "def",
  "lexical_name": "toMonoidHomMulEquiv",
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
  "slug": "tomonoidhommulequiv--16725a4e5bae4ca15e467d54",
  "source": {
    "blob": "6de0f5c3dcb009649a6bba8d19d9105c83f24cf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 314,
    "path": "GRWTSK/Algebra/GroupTheory/AddChar/Variantcc45b9d55f883db28ea08963ca6589839cd587aeaf2c5c5a43b7f0639183926a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16725a4e5bae4ca15e467d540b19d66759c146ee2ef6f07e64d0fe8ede1d4854",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/AddChar/Variantcc45b9d55f883db28ea08963ca6589839cd587aeaf2c5c5a43b7f0639183926a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b61541aa4fdc9d20264da97aaa71cb6dfe98cd416636cab963fe620dc7e66cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toMonoidHomMulEquiv : AddChar A M ≃* (Multiplicative A →* M) :=
  { toMonoidHomEquiv with map_mul' := fun φ ψ ↦ by rfl }

/-- Additive characters `A → M` are the same thing as additive homomorphisms from `A` to
`Additive M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/AddChar/Variantcc45b9d55f883db28ea08963ca6589839cd587aeaf2c5c5a43b7f0639183926a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/AddChar/Variantcc45b9d55f883db28ea08963ca6589839cd587aeaf2c5c5a43b7f0639183926a.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6de0f5c3dcb009649a6bba8d19d9105c83f24cf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
