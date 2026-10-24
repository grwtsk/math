# isInvariant_of_support_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1845bedb-5942-a9a8-0852-38dcc471a406",
  "kind": "theorem",
  "lexical_name": "isInvariant_of_support_le",
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
  "slug": "isinvariant-of-support-le--41c55648bcbc7f1bafd4c67c",
  "source": {
    "blob": "042a4d01d133af0b9b139e2a6870d7b28b047f0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 321,
    "path": "GRWTSK/Algebra/GroupTheory/Support/Variant767c84bc9472835bbd159875a1ef882ec5d63ed4f6177a0f0ee22ad8f32b34eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41c55648bcbc7f1bafd4c67c28078388e88bd8122f6e942bf8ae658ab67c5245",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Support/Variant767c84bc9472835bbd159875a1ef882ec5d63ed4f6177a0f0ee22ad8f32b34eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1845bedb-5942-a9a8-0852-38dcc471a406`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isInvariant_of_support_le {c : Perm α} {s : Finset α} (hcs : c.support ≤ s) (x : α) :
    c x ∈ s ↔ x ∈ s := by
  by_cases hx' : x ∈ c.support
  · simp only [hcs hx', hcs (apply_mem_support.mpr hx')]
  · rw [notMem_support.mp hx']

/-- A permutation c is the extension of a restriction of g to s
  iff its support is contained in s and its restriction is that of g -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Support/Variant767c84bc9472835bbd159875a1ef882ec5d63ed4f6177a0f0ee22ad8f32b34eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Support/Variant767c84bc9472835bbd159875a1ef882ec5d63ed4f6177a0f0ee22ad8f32b34eb.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `042a4d01d133af0b9b139e2a6870d7b28b047f0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
