# bethSmallFamily_covers_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59e5b224-e53c-4a2b-ce73-6c65b97dd694",
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
  "slug": "bethsmallfamily-covers-small--d20ff4d9c36d38581f733de0",
  "source": {
    "blob": "77535da7bb537c5cad78c75146c80d33b3365163",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variantd60d6e8a37dde902894bc7f1df8b8344acdbed0940ac10838657aa1b159020da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d20ff4d9c36d38581f733de0c3d5bb72155b80d9a606dc4cb231f10a5ec3f27f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variantd60d6e8a37dde902894bc7f1df8b8344acdbed0940ac10838657aa1b159020da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59e5b224-e53c-4a2b-ce73-6c65b97dd694`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–43.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variantd60d6e8a37dde902894bc7f1df8b8344acdbed0940ac10838657aa1b159020da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variantd60d6e8a37dde902894bc7f1df8b8344acdbed0940ac10838657aa1b159020da.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77535da7bb537c5cad78c75146c80d33b3365163` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
