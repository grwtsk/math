# boolRingCatEquivBoolAlgCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c8cd9b181c7750b10ac77841c51352f0e6d9fb5801a7f26da6c87a9ce6387fc7",
  "kind": "def",
  "lexical_name": "boolRingCatEquivBoolAlgCat",
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
  "slug": "boolringcatequivboolalgcat--ce79eebbe4b424504c9cb27c",
  "source": {
    "blob": "b8906c365cf1b2b38748009ff9e30f4fcc3e0f0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 108,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce79eebbe4b424504c9cb27cd5f4f638b4dfb319df29ea37de955a359da3eaf6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c8cd9b181c7750b10ac77841c51352f0e6d9fb5801a7f26da6c87a9ce6387fc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boolRingCatEquivBoolAlgCat : BoolRingCat ≌ BoolAlgCat where
  functor := forget₂ BoolRingCat BoolAlgCat
  inverse := forget₂ BoolAlgCat BoolRingCat
  unitIso := NatIso.ofComponents (fun X => BoolRingCat.Iso.mk <|
    (RingEquiv.asBoolRingAsBoolAlg X).symm) fun {X Y} f => rfl
  counitIso := NatIso.ofComponents (fun X => BoolAlgCat.Iso.mk <|
    OrderIso.asBoolAlgAsBoolRing X) fun {X Y} f => rfl
#align BoolRing_equiv_BoolAlg boolRingCatEquivBoolAlgCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8906c365cf1b2b38748009ff9e30f4fcc3e0f0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
