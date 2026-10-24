# toCompleteDistribLatticeMinimalAxioms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82c940e6b41eca7874837f8ba4015b6aaef96f3e1e216695095dd8e523e4e21b",
  "kind": "abbrev",
  "lexical_name": "toCompleteDistribLatticeMinimalAxioms",
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
  "slug": "tocompletedistriblatticeminimalaxioms--9dbb734771fd278edc1a53d5",
  "source": {
    "blob": "5f78e7dee4e3d036526ff7a34e69447d562cfba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9dbb734771fd278edc1a53d584a3afa255adbc8aa00074ff9eb58d500cd67d30",
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

Occurrence: `declaration:82c940e6b41eca7874837f8ba4015b6aaef96f3e1e216695095dd8e523e4e21b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev toCompleteDistribLatticeMinimalAxioms [DistribLattice α] [BoundedOrder α] :
    CompleteDistribLattice.MinimalAxioms α where
  __ := toCompleteLattice α
  iInf_sup_le_sup_sInf := fun a s => by
    convert (Finset.inf_sup_distrib_left s.toFinset id a).ge using 1
    rw [Finset.inf_eq_iInf]
    simp_rw [Set.mem_toFinset]
    rfl
  inf_sSup_le_iSup_inf := fun a s => by
    convert (Finset.sup_inf_distrib_left s.toFinset id a).le using 1
    rw [Finset.sup_eq_iSup]
    simp_rw [Set.mem_toFinset]
    rfl

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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f78e7dee4e3d036526ff7a34e69447d562cfba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
