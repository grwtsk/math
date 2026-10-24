# not_countably_generated_cocompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bf0359e-ea10-74c4-4a91-22764e3c65bc",
  "kind": "theorem",
  "lexical_name": "not_countably_generated_cocompact",
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
  "slug": "not-countably-generated-cocompact--9980395c0e925f5628bc4c4d",
  "source": {
    "blob": "40dbf0206a05f6f3c63a5c0bdb11cf2ad25dcbc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/RatLemmas/Variant6c801de94367382446527e49dd74e4f55a1708689058e89ec78e3e42ddb0d9ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9980395c0e925f5628bc4c4d2a1fbce81e9cf0f37771ce06bfcf0ff419f123aa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RatLemmas/Variant6c801de94367382446527e49dd74e4f55a1708689058e89ec78e3e42ddb0d9ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bf0359e-ea10-74c4-4a91-22764e3c65bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_countably_generated_cocompact : ¬IsCountablyGenerated (cocompact ℚ) := by
  intro H
  rcases exists_seq_tendsto (cocompact ℚ ⊓ 𝓝 0) with ⟨x, hx⟩
  rw [tendsto_inf] at hx; rcases hx with ⟨hxc, hx0⟩
  obtain ⟨n, hn⟩ : ∃ n : ℕ, x n ∉ insert (0 : ℚ) (range x) :=
    (hxc.eventually hx0.isCompact_insert_range.compl_mem_cocompact).exists
  exact hn (Or.inr ⟨n, rfl⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RatLemmas/Variant6c801de94367382446527e49dd74e4f55a1708689058e89ec78e3e42ddb0d9ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RatLemmas/Variant6c801de94367382446527e49dd74e4f55a1708689058e89ec78e3e42ddb0d9ff.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40dbf0206a05f6f3c63a5c0bdb11cf2ad25dcbc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
