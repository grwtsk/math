# _root_.StrictMono.tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e447d6ce227616824183864ce88ad7a07dbb2148",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b24da5b6-ca11-1dc0-d6f9-160190f8457b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e99a42d-8285-24da-2db9-c4766debd2b3",
  "kind": "theorem",
  "lexical_name": "_root_.StrictMono.tendsto_atTop",
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
  "slug": "root-strictmono-tendsto-attop--db3400c3750adbe52774e322",
  "source": {
    "blob": "e447d6ce227616824183864ce88ad7a07dbb2148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 106,
    "path": "GRWTSK/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db3400c3750adbe52774e322d11da511ffb3eedf6319f2e764540658bf0377a6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e99a42d-8285-24da-2db9-c4766debd2b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.StrictMono.tendsto_atTop {φ : ℕ → ℕ} (h : StrictMono φ) : Tendsto φ atTop atTop :=
  tendsto_atTop_mono h.id_le tendsto_id

/-- If `f` is a monotone function and `g` tends to `atTop` along a nontrivial filter.
then the upper bounds of the range of `f ∘ g`
are the same as the upper bounds of the range of `f`.

This lemma together with `exists_seq_monotone_tendsto_atTop_atTop` below
is useful to reduce a statement
about a monotone family indexed by a type with countably generated `atTop` (e.g., `ℝ`)
to the case of a family indexed by natural numbers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e447d6ce227616824183864ce88ad7a07dbb2148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
