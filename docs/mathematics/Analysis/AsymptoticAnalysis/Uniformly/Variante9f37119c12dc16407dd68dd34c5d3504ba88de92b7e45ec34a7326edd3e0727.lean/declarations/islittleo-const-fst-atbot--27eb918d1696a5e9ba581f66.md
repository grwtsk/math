# isLittleO_const_fst_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96363e0e-a390-226e-46c9-293e750ed3ec",
  "kind": "theorem",
  "lexical_name": "isLittleO_const_fst_atBot",
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
  "slug": "islittleo-const-fst-atbot--27eb918d1696a5e9ba581f66",
  "source": {
    "blob": "cfb2d408b233957fd20ceccf75b8ccb5285f62f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 73,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27eb918d1696a5e9ba581f66c8eec19b08ecdf9da07669a5b52578f1ec4a064a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96363e0e-a390-226e-46c9-293e750ed3ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLittleO_const_fst_atBot [NoMinOrder α] [ClosedIicTopology α] (c : F) (ly : Filter E) :
    (fun (_ : α × E) ↦ c) =o[atBot ×ˢ ly] Prod.fst := by
  refine ly.eq_or_neBot.casesOn (fun h ↦ by simp [h]) (fun _ ↦ ?_)
  change ((fun _ ↦ c) ∘ Prod.fst) =o[atBot ×ˢ ly] (id ∘ Prod.fst)
  rewrite [← isLittleO_map, map_fst_prod]
  exact isLittleO_const_id_atBot2 c

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfb2d408b233957fd20ceccf75b8ccb5285f62f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
