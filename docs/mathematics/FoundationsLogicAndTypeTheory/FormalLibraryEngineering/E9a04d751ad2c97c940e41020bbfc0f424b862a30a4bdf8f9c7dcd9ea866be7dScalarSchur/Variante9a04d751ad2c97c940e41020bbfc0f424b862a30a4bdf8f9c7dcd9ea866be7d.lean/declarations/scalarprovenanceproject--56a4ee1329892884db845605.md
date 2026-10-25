# scalarProvenanceProject

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fbb37806da299409d85b77480ef42493e31db784a5471bb8d61a3cc526ecb3f4",
  "kind": "def",
  "lexical_name": "scalarProvenanceProject",
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
  "slug": "scalarprovenanceproject--56a4ee1329892884db845605",
  "source": {
    "blob": "c9cd5333a13ee516001b19b42201da22013b4736",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E9a04d751ad2c97c940e41020bbfc0f424b862a30a4bdf8f9c7dcd9ea866be7dScalarSchur/Variante9a04d751ad2c97c940e41020bbfc0f424b862a30a4bdf8f9c7dcd9ea866be7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56a4ee1329892884db845605e6768fd65a0c31fe0f14f12c9b1d181900d233c7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E9a04d751ad2c97c940e41020bbfc0f424b862a30a4bdf8f9c7dcd9ea866be7dScalarSchur/Variante9a04d751ad2c97c940e41020bbfc0f424b862a30a4bdf8f9c7dcd9ea866be7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fbb37806da299409d85b77480ef42493e31db784a5471bb8d61a3cc526ecb3f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def scalarProvenanceProject (a b : ℝ) : (ℝ × ℝ) →ₗ[ℝ] (ℝ × ℝ) where
  toFun x := (x.1 + (b / a) * x.2, 0)
  map_add' x y := by
    ext <;> simp
    ring
  map_smul' r x := by
    ext <;> simp
    ring

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E9a04d751ad2c97c940e41020bbfc0f424b862a30a4bdf8f9c7dcd9ea866be7dScalarSchur/Variante9a04d751ad2c97c940e41020bbfc0f424b862a30a4bdf8f9c7dcd9ea866be7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E9a04d751ad2c97c940e41020bbfc0f424b862a30a4bdf8f9c7dcd9ea866be7dScalarSchur/Variante9a04d751ad2c97c940e41020bbfc0f424b862a30a4bdf8f9c7dcd9ea866be7d.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9cd5333a13ee516001b19b42201da22013b4736` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
