# guardAll_elim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12947719-bdc9-c74a-00da-1354680cb2f8",
  "kind": "theorem",
  "lexical_name": "guardAll_elim",
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
  "slug": "guardall-elim--88094c4079d82de5f564c2bf",
  "source": {
    "blob": "71b48708f6fdedf4bf0f8a618c26248b7a90c6b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1214,
    "line": 1206,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant4a6e7547e1b92dd4322b47152a522a0e54be9af8184ecf6b501f6ba14f5c44cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88094c4079d82de5f564c2bf3e3b7954835de0f20359cbbbee790a9f0198bfd1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant4a6e7547e1b92dd4322b47152a522a0e54be9af8184ecf6b501f6ba14f5c44cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12947719-bdc9-c74a-00da-1354680cb2f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1206–1214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem guardAll_elim {a : Expr S} (ha : HasType P Γ a T) (ma : WellModed γ a .data)
    (hp : Proves P Γ γ (L.code.guardAll K.code T G Q))
    (hg : Proves P Γ γ (G.instantiate a)) : Proves P Γ γ (Q.instantiate a) := by
  obtain ⟨s,hs⟩ := K.triple.domain.1
  have hh := L.all_elim_family K hT mT (hT s hs) (hG.code_imp hQ) ha ma hp
  have hi : Proves P Γ γ (L.imp (G.instantiate a) (Q.instantiate a)) := by
    change Proves P Γ γ ((L.code.guardBody G Q).instantiate a) at hh
    simpa only [LogicCode.guardBody_instantiate,code_imp] using hh
  exact L.imp_elim (hG.instantiate ha ma) (hQ.instantiate ha ma) hi hg
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant4a6e7547e1b92dd4322b47152a522a0e54be9af8184ecf6b501f6ba14f5c44cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant4a6e7547e1b92dd4322b47152a522a0e54be9af8184ecf6b501f6ba14f5c44cb.lean#L1206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71b48708f6fdedf4bf0f8a618c26248b7a90c6b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
