# bddAbove_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd024e1e-61f7-5ee4-2e26-6500671ab358",
  "kind": "theorem",
  "lexical_name": "bddAbove_iff",
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
  "slug": "bddabove-iff--5e8fa9ff2152f5346ab82fb5",
  "source": {
    "blob": "18796d42c589e751a6c33cfa873b9e5091dfbf86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 544,
    "line": 535,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variante62bb923a13f1b34d7561d0141fa7c998451043be20db8b064816020d1090b36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e8fa9ff2152f5346ab82fb5cc21d49d76768adf0c3c865f830162999114010b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variante62bb923a13f1b34d7561d0141fa7c998451043be20db8b064816020d1090b36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd024e1e-61f7-5ee4-2e26-6500671ab358`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem bddAbove_iff {s : Set <| Seminorm 𝕜 E} :
    BddAbove s ↔ BddAbove ((↑) '' s : Set (E → ℝ)) :=
  ⟨fun ⟨q, hq⟩ => ⟨q, forall_mem_image.2 fun _ hp => hq hp⟩, fun H =>
    ⟨sSup s, fun p hp x => by
      dsimp
      rw [Seminorm.coe_sSup_eq' H, iSup_apply]
      rcases H with ⟨q, hq⟩
      exact
        le_ciSup ⟨q x, forall_mem_range.mpr fun i : s => hq (mem_image_of_mem _ i.2) x⟩ ⟨p, hp⟩⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variante62bb923a13f1b34d7561d0141fa7c998451043be20db8b064816020d1090b36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variante62bb923a13f1b34d7561d0141fa7c998451043be20db8b064816020d1090b36.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18796d42c589e751a6c33cfa873b9e5091dfbf86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
