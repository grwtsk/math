# bethSmallFamily_covers_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efb067aa-ebcd-1112-3aa3-2672dc789210",
  "kind": "theorem",
  "lexical_name": "bethSmallFamily_covers_small",
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
  "slug": "bethsmallfamily-covers-small--5d6f77f7e9eb5728af30c65d",
  "source": {
    "blob": "019425eb42950705037014f504bb4fe5e07efb6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variantf3cfe95ed05389bc042e494fbebfad3ade4b648d435abbeef653ecbf08ef2dbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d6f77f7e9eb5728af30c65d889d3a60cf16db3edd5d10c2e3ad9b9faf17fde5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variantf3cfe95ed05389bc042e494fbebfad3ade4b648d435abbeef653ecbf08ef2dbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efb067aa-ebcd-1112-3aa3-2672dc789210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bethSmallFamily_covers_small (B : Set BethTarget)
    (hB : #B < Cardinal.beth Ordinal.omega0) :
    ∃ Q : Set (Set BethTarget), Q ⊆ bethSmallFamily ∧ #Q < ℵ₀ ∧ B ⊆ ⋃₀ Q := by
  refine ⟨{B}, ?_, ?_, ?_⟩
  · intro C hC
    have hCB : C = B := mem_singleton_iff.mp hC
    subst C
    exact hB
  · rw [Cardinal.mk_singleton]
    exact Cardinal.one_lt_aleph0
  · exact subset_sUnion_of_mem (mem_singleton B)

/-- The size-beth_omega target is reconstructed by fewer than the explicitly
enlarged threshold, which remains strictly below beth_omega. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variantf3cfe95ed05389bc042e494fbebfad3ade4b648d435abbeef653ecbf08ef2dbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variantf3cfe95ed05389bc042e494fbebfad3ade4b648d435abbeef653ecbf08ef2dbc.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `019425eb42950705037014f504bb4fe5e07efb6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
