# RingEquiv.asBoolRingAsBoolAlg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:178345f328fb174d5f824dbbdb2e308a1b79c1dfc30fedac76a6a017ef91dbfe",
  "kind": "def",
  "lexical_name": "RingEquiv.asBoolRingAsBoolAlg",
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
  "slug": "ringequiv-asboolringasboolalg--5d9314699f52ef4535dafed3",
  "source": {
    "blob": "a512af109e2dd26aaf8c858c9987cb45e94eddd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 582,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanRing/Variante2a439957cffad8bd8b5c0f1e47598b1371fc3766cd90e317434a38dda37bc80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d9314699f52ef4535dafed3bb243c059b230d38e0ee74a68dcb503752f866f1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanRing/Variante2a439957cffad8bd8b5c0f1e47598b1371fc3766cd90e317434a38dda37bc80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:178345f328fb174d5f824dbbdb2e308a1b79c1dfc30fedac76a6a017ef91dbfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 582–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RingEquiv.asBoolRingAsBoolAlg (α : Type*) [BooleanRing α] : AsBoolRing (AsBoolAlg α) ≃+* α :=
  { ofBoolRing.trans ofBoolAlg with
    map_mul' := fun _a _b => rfl
    map_add' := ofBoolAlg_symmDiff }
#align ring_equiv.as_boolring_as_boolalg RingEquiv.asBoolRingAsBoolAlg

open Bool

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanRing/Variante2a439957cffad8bd8b5c0f1e47598b1371fc3766cd90e317434a38dda37bc80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanRing/Variante2a439957cffad8bd8b5c0f1e47598b1371fc3766cd90e317434a38dda37bc80.lean#L582).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a512af109e2dd26aaf8c858c9987cb45e94eddd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
