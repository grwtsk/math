# card_support_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1706862f-a380-6657-dfd7-f023e4e07e60",
  "kind": "theorem",
  "lexical_name": "card_support_swap",
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
  "slug": "card-support-swap--f0ff3b594d9bec26efdffc6e",
  "source": {
    "blob": "c93e8693cb63e251b69461c06aa8d1f21b23e0bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 625,
    "line": 621,
    "path": "GRWTSK/Algebra/GroupTheory/Support/Variantdf3e113f5e5f05afb5f9ec8f20124d7ac8ead1cb1fe4b9b2a4bb403ed5acd0ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0ff3b594d9bec26efdffc6e3db6578d5858687b1d40e5aefcd1be1f81f61d42",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Support/Variantdf3e113f5e5f05afb5f9ec8f20124d7ac8ead1cb1fe4b9b2a4bb403ed5acd0ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1706862f-a380-6657-dfd7-f023e4e07e60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–625.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_support_swap {x y : α} (hxy : x ≠ y) : #(swap x y).support = 2 :=
  show #(swap x y).support = #⟨x ::ₘ y ::ₘ 0, by simp [hxy]⟩ from
    congr_arg card <| by simp [support_swap hxy, *, Finset.ext_iff]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Support/Variantdf3e113f5e5f05afb5f9ec8f20124d7ac8ead1cb1fe4b9b2a4bb403ed5acd0ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Support/Variantdf3e113f5e5f05afb5f9ec8f20124d7ac8ead1cb1fe4b9b2a4bb403ed5acd0ec.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c93e8693cb63e251b69461c06aa8d1f21b23e0bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
