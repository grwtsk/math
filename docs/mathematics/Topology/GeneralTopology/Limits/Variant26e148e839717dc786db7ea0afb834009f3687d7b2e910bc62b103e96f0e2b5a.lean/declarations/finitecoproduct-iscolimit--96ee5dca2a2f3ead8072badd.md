# finiteCoproduct.isColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1904a1f144671467488a08b4357201a4c85d4e54b2719b407b831e1ea27deb95",
  "kind": "def",
  "lexical_name": "finiteCoproduct.isColimit",
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
  "slug": "finitecoproduct-iscolimit--96ee5dca2a2f3ead8072badd",
  "source": {
    "blob": "aa7216b813107a880f73100ab5a34e8d0e0af0fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 197,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96ee5dca2a2f3ead8072baddd937d52fcf25ed9a0e44cd58b6a12570806eca80",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1904a1f144671467488a08b4357201a4c85d4e54b2719b407b831e1ea27deb95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteCoproduct.isColimit : Limits.IsColimit (finiteCoproduct.cocone X) where
  desc := fun s => finiteCoproduct.desc _ fun a => s.ι.app ⟨a⟩
  fac := fun s ⟨a⟩ => finiteCoproduct.ι_desc _ _ _
  uniq := fun s m hm => finiteCoproduct.hom_ext _ _ _ fun a => by
    specialize hm ⟨a⟩
    ext t
    apply_fun (fun q => q t) at hm
    exact hm

section Iso

/-- The isomorphism from the explicit finite coproducts to the abstract coproduct. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa7216b813107a880f73100ab5a34e8d0e0af0fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
