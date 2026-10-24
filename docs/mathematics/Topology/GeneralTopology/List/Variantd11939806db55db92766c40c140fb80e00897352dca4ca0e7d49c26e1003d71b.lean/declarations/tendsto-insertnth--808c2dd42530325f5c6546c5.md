# tendsto_insertNth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ca01f6f-8852-27fe-80e8-51ec8ab21296",
  "kind": "theorem",
  "lexical_name": "tendsto_insertNth",
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
  "slug": "tendsto-insertnth--808c2dd42530325f5c6546c5",
  "source": {
    "blob": "3e0deaa8c636f490f5dfff8961a2d5697b777876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 203,
    "path": "GRWTSK/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:808c2dd42530325f5c6546c5a630a5c31967d8baca4f7d99bbb0aec8657c2c21",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ca01f6f-8852-27fe-80e8-51ec8ab21296`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_insertNth {n : ℕ} {i : Fin (n + 1)} {a : α} :
    ∀ {l : Vector α n},
      Tendsto (fun p : α × Vector α n => insertNth p.1 i p.2) (𝓝 a ×ˢ 𝓝 l) (𝓝 (insertNth a i l))
  | ⟨l, hl⟩ => by
    rw [insertNth, tendsto_subtype_rng]
    simp [insertNth_val]
    exact List.tendsto_insertNth tendsto_fst (Tendsto.comp continuousAt_subtype_val tendsto_snd : _)
#align vector.tendsto_insert_nth Vector.tendsto_insertNth

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e0deaa8c636f490f5dfff8961a2d5697b777876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
