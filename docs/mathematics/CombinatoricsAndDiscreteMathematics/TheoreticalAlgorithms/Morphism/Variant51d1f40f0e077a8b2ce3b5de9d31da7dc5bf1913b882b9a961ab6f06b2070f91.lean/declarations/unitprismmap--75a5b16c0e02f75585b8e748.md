# unitPrismMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83e7d547e476821339cfa5e8868567c6c3dfc2ca4929a3538dbfa59f58b42f33",
  "kind": "def",
  "lexical_name": "unitPrismMap",
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
  "slug": "unitprismmap--75a5b16c0e02f75585b8e748",
  "source": {
    "blob": "fd7a55cd2ae17c5a1a407145d646cfec17ec9fa7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 101,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Morphism/Variant51d1f40f0e077a8b2ce3b5de9d31da7dc5bf1913b882b9a961ab6f06b2070f91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75a5b16c0e02f75585b8e748902e62dbacf33d0df8ea4e997a565af1b0328c66",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Morphism/Variant51d1f40f0e077a8b2ce3b5de9d31da7dc5bf1913b882b9a961ab6f06b2070f91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83e7d547e476821339cfa5e8868567c6c3dfc2ca4929a3538dbfa59f58b42f33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitPrismMap (p : Nat) :
    PrismMap (unitPrism p) (unitPrism p) where
  map := {
    map := fun _ => PUnit.unit
    preserves_zero := rfl
    preserves_one := rfl
    preserves_add := by intro x y; rfl
    preserves_mul := by intro x y; rfl
    preserves_delta := by intro x; rfl
    preserves_phi := by intro x; rfl
    homBoundary := ["Identity map of the unit δ-ring."]
  }
  maps_I_to_J := {
    maps_mem := by intro x hx; trivial
    boundary := ["Total unit ideal maps to itself."]
  }
  rigidity := {
    equality := True
    equalityCertified := trivial
    statement := "IB = J for the unit prism map"
    boundary := ["Trivial rigidity certificate for the unit prism."]
  }
  boundary := ["Unit prism identity map."]

end Surface.Prismatic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Morphism/Variant51d1f40f0e077a8b2ce3b5de9d31da7dc5bf1913b882b9a961ab6f06b2070f91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Morphism/Variant51d1f40f0e077a8b2ce3b5de9d31da7dc5bf1913b882b9a961ab6f06b2070f91.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd7a55cd2ae17c5a1a407145d646cfec17ec9fa7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
