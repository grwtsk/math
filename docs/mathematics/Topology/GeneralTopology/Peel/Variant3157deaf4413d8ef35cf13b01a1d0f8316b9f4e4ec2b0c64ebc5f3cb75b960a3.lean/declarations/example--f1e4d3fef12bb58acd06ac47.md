# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37baf36e30b062092cdff67ec924b2bf107b1af1008809ab35ee5bb17376cdae",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--f1e4d3fef12bb58acd06ac47",
  "source": {
    "blob": "8dad58a210c0b2bbe3b648ade41eae6bc4098a47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 137,
    "path": "GRWTSK/Topology/GeneralTopology/Peel/Variant3157deaf4413d8ef35cf13b01a1d0f8316b9f4e4ec2b0c64ebc5f3cb75b960a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1e4d3fef12bb58acd06ac4740f4e159b32e44e2cf1962aa88610bca4576e0a1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Peel/Variant3157deaf4413d8ef35cf13b01a1d0f8316b9f4e4ec2b0c64ebc5f3cb75b960a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37baf36e30b062092cdff67ec924b2bf107b1af1008809ab35ee5bb17376cdae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (x y : ℚ) (h : ∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, x + n = y + ε) :
    ∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, x - ε = y - n := by
  intro ε hε
  peel 3 (h ε hε)
  rename_i _ n _
  guard_hyp this : x + ↑n = y + ε
  guard_target =ₐ x - ε = y - n
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Peel/Variant3157deaf4413d8ef35cf13b01a1d0f8316b9f4e4ec2b0c64ebc5f3cb75b960a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Peel/Variant3157deaf4413d8ef35cf13b01a1d0f8316b9f4e4ec2b0c64ebc5f3cb75b960a3.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dad58a210c0b2bbe3b648ade41eae6bc4098a47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
