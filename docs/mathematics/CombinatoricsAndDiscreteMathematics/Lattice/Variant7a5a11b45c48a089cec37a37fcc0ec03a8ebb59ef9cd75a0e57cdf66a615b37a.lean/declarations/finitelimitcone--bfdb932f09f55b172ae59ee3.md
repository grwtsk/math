# finiteLimitCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06377379053d7b68f4b62d45e6b91ef2b7cdbe6cccb43d970ef9ce868d3f3c8f",
  "kind": "def",
  "lexical_name": "finiteLimitCone",
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
  "slug": "finitelimitcone--bfdb932f09f55b172ae59ee3",
  "source": {
    "blob": "26aa73dca43aed7fe5563d7ab4919d0679e9aa8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 27,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfdb932f09f55b172ae59ee3270a773752800c28870c217dd937d252c9f21e08",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06377379053d7b68f4b62d45e6b91ef2b7cdbe6cccb43d970ef9ce868d3f3c8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteLimitCone [SemilatticeInf α] [OrderTop α] (F : J ⥤ α) : LimitCone F where
  cone :=
    { pt := Finset.univ.inf F.obj
      π := { app := fun _ => homOfLE (Finset.inf_le (Fintype.complete _)) } }
  isLimit := { lift := fun s => homOfLE (Finset.le_inf fun j _ => (s.π.app j).down.down) }

/--
The colimit cocone over any functor from a finite diagram into a `SemilatticeSup` with `OrderBot`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26aa73dca43aed7fe5563d7ab4919d0679e9aa8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
