# liftSemilatticeSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ceba3ba9876c06d5419d3efa32b552a97f0731a8fdccb92c36d76a290989da7d",
  "kind": "abbrev",
  "lexical_name": "liftSemilatticeSup",
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
  "slug": "liftsemilatticesup--8fd983c85418c510ba29424e",
  "source": {
    "blob": "0db59ba65211d0c05632aa83c1b056c2a8296e6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 330,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantb6f010253404b7afdeea57b76244edc0750015b3b791416190b2577671581bd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fd983c85418c510ba29424ef3b7d5121f443d5b0be16d0130fe7b4e2660f200",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantb6f010253404b7afdeea57b76244edc0750015b3b791416190b2577671581bd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ceba3ba9876c06d5419d3efa32b552a97f0731a8fdccb92c36d76a290989da7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev liftSemilatticeSup [SemilatticeSup α] (gi : GaloisInsertion l u) : SemilatticeSup β :=
  { ‹PartialOrder β› with
    sup := fun a b => l (u a ⊔ u b)
    le_sup_left := fun a _ => (gi.le_l_u a).trans <| gi.gc.monotone_l <| le_sup_left
    le_sup_right := fun _ b => (gi.le_l_u b).trans <| gi.gc.monotone_l <| le_sup_right
    sup_le := fun _ _ _ hac hbc =>
      gi.gc.l_le <| sup_le (gi.gc.monotone_u hac) (gi.gc.monotone_u hbc) }

-- See note [reducible non instances]
/-- Lift the infima along a Galois insertion -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantb6f010253404b7afdeea57b76244edc0750015b3b791416190b2577671581bd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantb6f010253404b7afdeea57b76244edc0750015b3b791416190b2577671581bd7.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0db59ba65211d0c05632aa83c1b056c2a8296e6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
