# sumElim_single_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09fdf7b4-f9c8-6306-d9d1-1386dfc3f7bd",
  "kind": "lemma",
  "lexical_name": "sumElim_single_single",
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
  "slug": "sumelim-single-single--5cbbdb27cc1fa72bd5dbaa4c",
  "source": {
    "blob": "f08e2dca632d9f450abe593e0ad8fc6095c40ea5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1072,
    "line": 1069,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9572d17248d8f367b2b32193e470ad051de6b8860fe94809529483ee14387e32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cbbdb27cc1fa72bd5dbaa4c54dcc0e6f0e52772638e9f6b0ac6bbd4b3032d01",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9572d17248d8f367b2b32193e470ad051de6b8860fe94809529483ee14387e32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09fdf7b4-f9c8-6306-d9d1-1386dfc3f7bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1069–1072.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma sumElim_single_single [AddMonoid M] (a : α) (b : β) (m₁ m₂ : M) :
    sumElim (single a m₁) (single b m₂) = single (.inl a) m₁ + single (.inr b) m₂ := by
  classical ext (_ | _) <;> simp [single_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9572d17248d8f367b2b32193e470ad051de6b8860fe94809529483ee14387e32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9572d17248d8f367b2b32193e470ad051de6b8860fe94809529483ee14387e32.lean#L1069).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f08e2dca632d9f450abe593e0ad8fc6095c40ea5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
