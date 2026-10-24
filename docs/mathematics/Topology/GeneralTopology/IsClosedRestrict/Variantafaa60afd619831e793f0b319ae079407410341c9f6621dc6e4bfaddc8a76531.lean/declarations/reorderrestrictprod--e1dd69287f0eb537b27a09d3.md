# reorderRestrictProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d14d87b233938fc0a5e343c3db1bc28f223250acaf1852af6a69ca2cca9df44e",
  "kind": "def",
  "lexical_name": "reorderRestrictProd",
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
  "slug": "reorderrestrictprod--e1dd69287f0eb537b27a09d3",
  "source": {
    "blob": "4a2f8db97317b60738697d767e025ac4aa411474",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 40,
    "path": "GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1dd69287f0eb537b27a09d3e39b138f3c77a7b9417a42c150c89f5b1659a042",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d14d87b233938fc0a5e343c3db1bc28f223250acaf1852af6a69ca2cca9df44e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def reorderRestrictProd (S : Set ι) (s : Set (Π j, α j))
    (p : Sᶜ.domRestrict '' s × (Π i : S, α i)) :
    Π j, α j :=
  fun j ↦ if h : j ∈ S
    then (p.2 : Π j : ↑(S : Set ι), α j) ⟨j, h⟩
    else (p.1 : Π j : ↑(Sᶜ : Set ι), α j) ⟨j, h⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a2f8db97317b60738697d767e025ac4aa411474` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
