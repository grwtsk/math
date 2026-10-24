# linearOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:deb53ae12eea3f7ae59d68e75c4ebbdb41783ec778a3f2751aa9e2d0a3569a85",
  "kind": "abbrev",
  "lexical_name": "linearOrder",
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
  "slug": "linearorder--9e04fdd09e914131d4f2d7e6",
  "source": {
    "blob": "9cab77300c7e2535aaea893c77ea45736af8e311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1056,
    "line": 1049,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant358b4afff4733d5fd3114d79cf19e0d7898d60543ac936834a00396ef5aae6e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e04fdd09e914131d4f2d7e68c522be952f935bafb66c8a8832e841757ba5842",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant358b4afff4733d5fd3114d79cf19e0d7898d60543ac936834a00396ef5aae6e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:deb53ae12eea3f7ae59d68e75c4ebbdb41783ec778a3f2751aa9e2d0a3569a85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1049–1056.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev linearOrder [LinearOrder β] [DecidableEq α] : LinearOrder α := by
  let max := e.max
  let min := e.min
  let preorder := e.preorder
  let compare := e.ord
  apply e.injective.linearOrder <;> intros <;> first | rfl | exact e.apply_symm_apply _

/-- Transfer `SemilatticeSup` across an `Equiv`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant358b4afff4733d5fd3114d79cf19e0d7898d60543ac936834a00396ef5aae6e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant358b4afff4733d5fd3114d79cf19e0d7898d60543ac936834a00396ef5aae6e4.lean#L1049).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cab77300c7e2535aaea893c77ea45736af8e311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
