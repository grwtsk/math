# RingHom.ker_fg_of_localizationSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de83636a-6174-58ef-6a3d-0e30fa0e48f8",
  "kind": "lemma",
  "lexical_name": "RingHom.ker_fg_of_localizationSpan",
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
  "slug": "ringhom-ker-fg-of-localizationspan--b93adf43293a476225c5aa15",
  "source": {
    "blob": "c27e234bd015c01450062387f74afc5d36b65068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 187,
    "path": "GRWTSK/Algebra/Finiteness/Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b93adf43293a476225c5aa153c528f2d34c3e01047f6616ff5b6eed306f60c81",
  "verification": {
    "reference": "docs/verification/Algebra/Finiteness/Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de83636a-6174-58ef-6a3d-0e30fa0e48f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RingHom.ker_fg_of_localizationSpan (t : Set R) (ht : Ideal.span t = ⊤)
    (H : ∀ g : t, (RingHom.ker (Localization.awayMap f g.val)).FG) :
    (RingHom.ker f).FG := by
  apply Ideal.fg_of_localizationSpan t ht
  intro g
  rw [← IsLocalization.ker_map (Localization.Away (f g.val)) f (Submonoid.map_powers f g.val)]
  exact H g
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finiteness/Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finiteness/Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c27e234bd015c01450062387f74afc5d36b65068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
