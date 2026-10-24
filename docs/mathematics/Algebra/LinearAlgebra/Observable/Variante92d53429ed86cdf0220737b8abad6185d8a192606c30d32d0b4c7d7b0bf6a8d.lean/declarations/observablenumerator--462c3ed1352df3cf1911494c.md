# observableNumerator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87a920a42ac490f26365c804dcab4efb7d3ad5371a78c7bb8633e2c2c29f7b34",
  "kind": "def",
  "lexical_name": "observableNumerator",
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
  "slug": "observablenumerator--462c3ed1352df3cf1911494c",
  "source": {
    "blob": "c6254f286406431ce6f05f03ae256c066ae1287b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 40,
    "path": "GRWTSK/Algebra/LinearAlgebra/Observable/Variante92d53429ed86cdf0220737b8abad6185d8a192606c30d32d0b4c7d7b0bf6a8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:462c3ed1352df3cf1911494c2d9fbb5649e9044de8daccae0bfbd40382e94046",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Observable/Variante92d53429ed86cdf0220737b8abad6185d8a192606c30d32d0b4c7d7b0bf6a8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87a920a42ac490f26365c804dcab4efb7d3ad5371a78c7bb8633e2c2c29f7b34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def observableNumerator
    (observable : HermitianObservable N D)
    (state : TensorState N D) : ℂ :=
  ∑ left : PhysicalConfiguration N D,
    ∑ right : PhysicalConfiguration N D,
      star (state left) *
        observable.matrix left right *
        state right

/-- Normalized expectation; semantic use additionally certifies nonzero weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Observable/Variante92d53429ed86cdf0220737b8abad6185d8a192606c30d32d0b4c7d7b0bf6a8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Observable/Variante92d53429ed86cdf0220737b8abad6185d8a192606c30d32d0b4c7d7b0bf6a8d.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6254f286406431ce6f05f03ae256c066ae1287b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
