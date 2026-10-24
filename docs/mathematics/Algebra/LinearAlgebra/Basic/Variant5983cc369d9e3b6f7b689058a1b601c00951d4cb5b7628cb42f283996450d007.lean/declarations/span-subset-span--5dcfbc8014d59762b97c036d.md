# span_subset_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c839c16-aa5a-4c37-70a6-e81bd1a52772",
  "kind": "theorem",
  "lexical_name": "span_subset_span",
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
  "slug": "span-subset-span--5dcfbc8014d59762b97c036d",
  "source": {
    "blob": "5bc94086e7e6e6f4bd7f58e9e061153b953d6896",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 209,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant5983cc369d9e3b6f7b689058a1b601c00951d4cb5b7628cb42f283996450d007.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5dcfbc8014d59762b97c036d89377a055ea8f5a31f28a9a6e5778253e2c682ef",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant5983cc369d9e3b6f7b689058a1b601c00951d4cb5b7628cb42f283996450d007.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c839c16-aa5a-4c37-70a6-e81bd1a52772`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_subset_span :
    ↑(span R s) ⊆ (span S s : Set M) :=
  span_le_restrictScalars R S s

/-- Taking the span by a large ring of the span by the small ring is the same as taking the span
by just the large ring. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant5983cc369d9e3b6f7b689058a1b601c00951d4cb5b7628cb42f283996450d007.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant5983cc369d9e3b6f7b689058a1b601c00951d4cb5b7628cb42f283996450d007.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bc94086e7e6e6f4bd7f58e9e061153b953d6896` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
