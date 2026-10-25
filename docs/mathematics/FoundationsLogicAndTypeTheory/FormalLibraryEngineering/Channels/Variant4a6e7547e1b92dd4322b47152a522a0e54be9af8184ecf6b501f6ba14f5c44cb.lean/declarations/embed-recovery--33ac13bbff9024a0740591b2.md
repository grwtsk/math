# embed_recovery

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b1eac4d-b2bb-1ecc-409f-37e9b292b8be",
  "kind": "theorem",
  "lexical_name": "embed_recovery",
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
  "slug": "embed-recovery--33ac13bbff9024a0740591b2",
  "source": {
    "blob": "71b48708f6fdedf4bf0f8a618c26248b7a90c6b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 563,
    "line": 539,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant4a6e7547e1b92dd4322b47152a522a0e54be9af8184ecf6b501f6ba14f5c44cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33ac13bbff9024a0740591b2cc0e1fd3cab2dc7cd64164c4089bfddd7f96ae8d",
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

Occurrence: `result:6b1eac4d-b2bb-1ecc-409f-37e9b292b8be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–563.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem embed_recovery {T t Q : Expr S} (hT : SortedAt P Γ T I) (mT : WellModed γ T .data)
    (bs : List Bool) (ht : HasType P Γ t T) (mt : WellModed γ t .data) (hQ : L.Family T Q) :
    Equivalent P Γ γ ((R.recoveryBody L.code bs.length T Q).instantiate (R.embed L.code bs T t))
      (Q.instantiate t) := by
  induction bs with
  | nil =>
    obtain ⟨s,hs⟩ := L.triple.codomain.1
    exact .refl ((hQ.instantiate ht mt).1 s hs)
  | cons b bs ih =>
    have h₁ := h.embed_typed hT mT bs ht mt
    have h₂ := h.embed_typed hT mT (b::bs) ht mt
    have hc := h.recoveryBody_family hT mT bs.length hQ
    have he := h.emb_recovery (h.tower_sorted hT bs.length) (h.tower_mode mT bs.length) b h₁.1
      h₁.2 hc
    have hp : Equivalent P Γ γ
        ((R.recoveryBody L.code (b::bs).length T Q).instantiate (R.embed L.code (b::bs) T t))
        ((R.recoveryBody L.code bs.length T Q).instantiate (R.embed L.code bs T t)) := by
      simpa only [List.length_cons,recoveryBody,recBody_instantiate,embed] using he
    obtain ⟨s,hs⟩ := L.triple.codomain.1
    exact hp.trans ih ((h.recoveryBody_family hT mT (b::bs).length hQ |>.instantiate h₂.1
      h₂.2).1 s hs)
      ((hc.instantiate h₁.1 h₁.2).1 s hs) ((hQ.instantiate ht mt).1 s hs)
end Formed
end DoubleCode

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant4a6e7547e1b92dd4322b47152a522a0e54be9af8184ecf6b501f6ba14f5c44cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant4a6e7547e1b92dd4322b47152a522a0e54be9af8184ecf6b501f6ba14f5c44cb.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71b48708f6fdedf4bf0f8a618c26248b7a90c6b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
