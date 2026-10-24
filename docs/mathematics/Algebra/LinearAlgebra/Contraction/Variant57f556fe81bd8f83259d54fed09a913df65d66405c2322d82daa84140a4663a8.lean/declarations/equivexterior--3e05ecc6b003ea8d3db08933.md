# equivExterior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74c9168222757d3727be4ca2b63604a7b5416c6819ce949c6ddda1393239f75d",
  "kind": "def",
  "lexical_name": "equivExterior",
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
  "slug": "equivexterior--3e05ecc6b003ea8d3db08933",
  "source": {
    "blob": "15afac4a4f6de0a8235c962cb081a1c9357110f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 349,
    "path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e05ecc6b003ea8d3db08933404b172f6425cf286144c712f60b80eccb9c7306",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74c9168222757d3727be4ca2b63604a7b5416c6819ce949c6ddda1393239f75d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivExterior [Invertible (2 : R)] : CliffordAlgebra Q ≃ₗ[R] ExteriorAlgebra R M :=
  changeFormEquiv changeForm.associated_neg_proof

/-- A `CliffordAlgebra` over a nontrivial ring is nontrivial, in characteristic not two. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15afac4a4f6de0a8235c962cb081a1c9357110f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
