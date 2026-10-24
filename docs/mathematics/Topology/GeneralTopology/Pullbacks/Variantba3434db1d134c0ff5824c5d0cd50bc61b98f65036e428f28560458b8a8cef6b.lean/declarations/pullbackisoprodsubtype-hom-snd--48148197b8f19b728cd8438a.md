# pullbackIsoProdSubtype_hom_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ceea3384-4b6f-6108-2013-e218d863ed38",
  "kind": "theorem",
  "lexical_name": "pullbackIsoProdSubtype_hom_snd",
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
  "slug": "pullbackisoprodsubtype-hom-snd--48148197b8f19b728cd8438a",
  "source": {
    "blob": "06816a9c7b22aef6668186e95cf95efa4af31281",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 137,
    "path": "GRWTSK/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48148197b8f19b728cd8438afbd3975ffb8f744ffd5ef7da819b516705426e7f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ceea3384-4b6f-6108-2013-e218d863ed38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullbackIsoProdSubtype_hom_snd (f : X ⟶ Z) (g : Y ⟶ Z) :
    (pullbackIsoProdSubtype f g).hom ≫ pullbackSnd f g = pullback.snd := by
  rw [← Iso.eq_inv_comp, pullbackIsoProdSubtype_inv_snd]
#align Top.pullback_iso_prod_subtype_hom_snd TopCat.pullbackIsoProdSubtype_hom_snd

-- Porting note: why do I need to tell Lean to coerce pullback to a type
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06816a9c7b22aef6668186e95cf95efa4af31281` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
