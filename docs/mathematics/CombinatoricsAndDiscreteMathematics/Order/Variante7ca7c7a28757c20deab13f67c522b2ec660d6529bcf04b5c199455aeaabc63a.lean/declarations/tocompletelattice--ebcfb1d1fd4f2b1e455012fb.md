# toCompleteLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fd3c84ac9bdff372441a2ccd3aaf55da8887a8a374397156547acd79b822221",
  "kind": "abbrev",
  "lexical_name": "toCompleteLattice",
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
  "slug": "tocompletelattice--ebcfb1d1fd4f2b1e455012fb",
  "source": {
    "blob": "5f78e7dee4e3d036526ff7a34e69447d562cfba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 92,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebcfb1d1fd4f2b1e455012fb0802231b4478c37c30385f08b26bbfd9daa8f916",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fd3c84ac9bdff372441a2ccd3aaf55da8887a8a374397156547acd79b822221`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev toCompleteLattice [Lattice α] [BoundedOrder α] : CompleteLattice α where
  __ := ‹Lattice α›
  __ := ‹BoundedOrder α›
  sSup := fun s => s.toFinset.sup id
  sInf := fun s => s.toFinset.inf id
  le_sSup := fun _ _ ha => Finset.le_sup (f := id) (Set.mem_toFinset.mpr ha)
  sSup_le := fun _ _ ha => Finset.sup_le fun _ hb => ha _ <| Set.mem_toFinset.mp hb
  sInf_le := fun _ _ ha => Finset.inf_le (Set.mem_toFinset.mpr ha)
  le_sInf := fun _ _ ha => Finset.le_inf fun _ hb => ha _ <| Set.mem_toFinset.mp hb

-- See note [reducible non-instances]
/-- A finite bounded distributive lattice is completely distributive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f78e7dee4e3d036526ff7a34e69447d562cfba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
