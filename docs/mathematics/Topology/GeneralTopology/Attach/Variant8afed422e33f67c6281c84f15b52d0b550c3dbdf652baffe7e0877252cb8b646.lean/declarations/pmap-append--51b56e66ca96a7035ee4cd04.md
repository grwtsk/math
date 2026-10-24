# pmap_append'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2844fbf-b18a-b7f6-1e5e-165260de9066",
  "kind": "theorem",
  "lexical_name": "pmap_append'",
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
  "slug": "pmap-append--51b56e66ca96a7035ee4cd04",
  "source": {
    "blob": "476cbde4449e31979885f46854ba887cc560f694",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 454,
    "path": "GRWTSK/Topology/GeneralTopology/Attach/Variant8afed422e33f67c6281c84f15b52d0b550c3dbdf652baffe7e0877252cb8b646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51b56e66ca96a7035ee4cd0444827548d7cf14fbf8c07447b47b330525d582a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attach/Variant8afed422e33f67c6281c84f15b52d0b550c3dbdf652baffe7e0877252cb8b646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2844fbf-b18a-b7f6-1e5e-165260de9066`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pmap_append' {p : α → Prop} {f : ∀ a : α, p a → β} {xs ys : Array α}
    (h₁ : ∀ a ∈ xs, p a) (h₂ : ∀ a ∈ ys, p a) :
    ((xs ++ ys).pmap f fun a ha => (mem_append.1 ha).elim (h₁ a) (h₂ a)) =
      xs.pmap f h₁ ++ ys.pmap f h₂ :=
  pmap_append _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attach/Variant8afed422e33f67c6281c84f15b52d0b550c3dbdf652baffe7e0877252cb8b646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attach/Variant8afed422e33f67c6281c84f15b52d0b550c3dbdf652baffe7e0877252cb8b646.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `476cbde4449e31979885f46854ba887cc560f694` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
