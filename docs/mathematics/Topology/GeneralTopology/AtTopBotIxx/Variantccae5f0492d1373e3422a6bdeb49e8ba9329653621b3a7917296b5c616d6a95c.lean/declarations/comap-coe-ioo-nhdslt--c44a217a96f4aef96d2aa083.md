# comap_coe_Ioo_nhdsLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a365d810-0d1d-e1c8-ca9e-3ed4e1a47d77",
  "kind": "theorem",
  "lexical_name": "comap_coe_Ioo_nhdsLT",
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
  "slug": "comap-coe-ioo-nhdslt--c44a217a96f4aef96d2aa083",
  "source": {
    "blob": "d5d5b420f2b0349f56ee0158c5ef037ef90f0bc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 124,
    "path": "GRWTSK/Topology/GeneralTopology/AtTopBotIxx/Variantccae5f0492d1373e3422a6bdeb49e8ba9329653621b3a7917296b5c616d6a95c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c44a217a96f4aef96d2aa083edd6e87983403ed7c669372c40145d9cd0c3a1a3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AtTopBotIxx/Variantccae5f0492d1373e3422a6bdeb49e8ba9329653621b3a7917296b5c616d6a95c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a365d810-0d1d-e1c8-ca9e-3ed4e1a47d77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_coe_Ioo_nhdsLT (a b : X) (hb : IsSuccPrelimit b := by exact .of_dense _) :
    comap ((↑) : Ioo a b → X) (𝓝[<] b) = atTop :=
  comap_coe_nhdsLT_of_Ioo_subset Ioo_subset_Iio_self
    (fun h => ⟨a, h.elim fun _x hx ↦ hx.1.trans hx.2, Subset.rfl⟩) hb

/-- The `atBot` filter for an open interval `Ioo a b` comes from the right-neighbourhoods filter at
the left endpoint in the ambient order. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AtTopBotIxx/Variantccae5f0492d1373e3422a6bdeb49e8ba9329653621b3a7917296b5c616d6a95c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AtTopBotIxx/Variantccae5f0492d1373e3422a6bdeb49e8ba9329653621b3a7917296b5c616d6a95c.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5d5b420f2b0349f56ee0158c5ef037ef90f0bc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
