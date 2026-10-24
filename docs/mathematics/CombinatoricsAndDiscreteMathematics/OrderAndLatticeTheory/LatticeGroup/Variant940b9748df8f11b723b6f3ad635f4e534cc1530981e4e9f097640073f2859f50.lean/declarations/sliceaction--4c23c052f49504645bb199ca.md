# SliceAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cefdd446c9ca108e00e42ed8a847af7ceee2ed3e755aa2a1124cae55b580136d",
  "kind": "structure",
  "lexical_name": "SliceAction",
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
  "slug": "sliceaction--4c23c052f49504645bb199ca",
  "source": {
    "blob": "a2725741da4aabc4dd12d430ef267375438fa259",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 86,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant940b9748df8f11b723b6f3ad635f4e534cc1530981e4e9f097640073f2859f50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c23c052f49504645bb199ca7a490940d5f3e5dbc4bf952a8a51b6e1fc6eb5dc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant940b9748df8f11b723b6f3ad635f4e534cc1530981e4e9f097640073f2859f50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cefdd446c9ca108e00e42ed8a847af7ceee2ed3e755aa2a1124cae55b580136d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SliceAction (G : Type) {α : Type} (xs : List α) where
  act : G → Slice xs → Slice xs
  one : G
  mul : G → G → G
  inv : G → G
  act_one :
    ∀ slice, act one slice = slice
  act_mul :
    ∀ g h slice, act (mul g h) slice = act g (act h slice)
  act_inv_left :
    ∀ g slice, act (inv g) (act g slice) = slice
  act_inv_right :
    ∀ g slice, act g (act (inv g) slice) = slice
  act_preserves_le :
    ∀ g {source target : Slice xs},
      Slice.le source target → Slice.le (act g source) (act g target)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant940b9748df8f11b723b6f3ad635f4e534cc1530981e4e9f097640073f2859f50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant940b9748df8f11b723b6f3ad635f4e534cc1530981e4e9f097640073f2859f50.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2725741da4aabc4dd12d430ef267375438fa259` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
