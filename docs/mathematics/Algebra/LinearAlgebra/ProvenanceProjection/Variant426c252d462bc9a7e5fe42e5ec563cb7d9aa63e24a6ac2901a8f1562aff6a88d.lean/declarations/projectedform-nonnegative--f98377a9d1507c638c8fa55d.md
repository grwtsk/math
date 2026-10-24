# projectedForm_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8117c584-5a80-f909-0ae8-efbbfc80d3de",
  "kind": "theorem",
  "lexical_name": "projectedForm_nonnegative",
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
  "slug": "projectedform-nonnegative--f98377a9d1507c638c8fa55d",
  "source": {
    "blob": "d47ce7c3f3e75e6e7aaa1871def70edca7ebfc33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 114,
    "path": "GRWTSK/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f98377a9d1507c638c8fa55d7b0de63e984eabbf5bb29e5071d642b56474e9f0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8117c584-5a80-f909-0ae8-efbbfc80d3de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem projectedForm_nonnegative (P : ProvenanceProjector G) (x : V) :
    0 ≤ P.projectedForm.form x x :=
  P.projectedForm.nonnegative x

/-- The positive quadratic energy decomposes as explained provenance plus
autonomous residual energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d47ce7c3f3e75e6e7aaa1871def70edca7ebfc33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
