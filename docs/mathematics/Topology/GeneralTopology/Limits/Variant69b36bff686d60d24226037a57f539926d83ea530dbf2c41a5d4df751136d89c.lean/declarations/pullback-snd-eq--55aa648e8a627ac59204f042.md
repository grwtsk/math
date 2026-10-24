# pullback_snd_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc671e8c-0bf2-5ef8-aa82-10d8ca99eee1",
  "kind": "theorem",
  "lexical_name": "pullback_snd_eq",
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
  "slug": "pullback-snd-eq--55aa648e8a627ac59204f042",
  "source": {
    "blob": "4e0b43351305139ab6c82d5ea80a3a5942cb1a34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 129,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Variant69b36bff686d60d24226037a57f539926d83ea530dbf2c41a5d4df751136d89c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55aa648e8a627ac59204f042affa99efa7fefd5ff5c67aa3928ea73a61db22d3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Variant69b36bff686d60d24226037a57f539926d83ea530dbf2c41a5d4df751136d89c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc671e8c-0bf2-5ef8-aa82-10d8ca99eee1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullback_snd_eq :
    Profinite.pullback.snd f g = (pullbackIsoPullback f g).hom ≫ Limits.pullback.snd := by
  dsimp [pullbackIsoPullback]
  simp only [Limits.limit.conePointUniqueUpToIso_hom_comp, pullback.cone_pt, pullback.cone_π]

end Isos

end Pullbacks

section FiniteCoproducts

variable {α : Type} [Fintype α] (X : α → Profinite.{u})

/--
The coproduct of a finite family of objects in `Profinite`, constructed as the disjoint
union with its usual topology.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Variant69b36bff686d60d24226037a57f539926d83ea530dbf2c41a5d4df751136d89c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Variant69b36bff686d60d24226037a57f539926d83ea530dbf2c41a5d4df751136d89c.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e0b43351305139ab6c82d5ea80a3a5942cb1a34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
