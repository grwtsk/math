# forall_on_of_finite_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72eaa29a-36cf-1355-61f5-16cd96e26ae4",
  "kind": "theorem",
  "lexical_name": "forall_on_of_finite_cover",
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
  "slug": "forall-on-of-finite-cover--434b06e9efe8c2e1445c823f",
  "source": {
    "blob": "7d44f4085d729dd28178ce24fa0d09a39222dea1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant1d4f0ab4823e3f90bf4fe3a7681c6d9e999f1c0a5cdeba3597cb7ed208933365.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:434b06e9efe8c2e1445c823f21d1544631863916426b5508cfac4a87267d636d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant1d4f0ab4823e3f90bf4fe3a7681c6d9e999f1c0a5cdeba3597cb7ed208933365.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72eaa29a-36cf-1355-61f5-16cd96e26ae4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forall_on_of_finite_cover (domain : Set α) (cells : ι → Set α)
    (indices : Finset ι) (P : α → Prop)
    (hcover : ∀ x ∈ domain, ∃ i ∈ indices, x ∈ cells i)
    (hlocal : ∀ i ∈ indices, ∀ x ∈ cells i, P x) :
    ∀ x ∈ domain, P x := by
  intro x hx
  obtain ⟨i, hi, hxi⟩ := hcover x hx
  exact hlocal i hi x hxi

/-- Adding an explicitly proved tail gives a theorem over the entire declared
domain. The tail obligation is a premise, never inferred from finite coverage. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant1d4f0ab4823e3f90bf4fe3a7681c6d9e999f1c0a5cdeba3597cb7ed208933365.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant1d4f0ab4823e3f90bf4fe3a7681c6d9e999f1c0a5cdeba3597cb7ed208933365.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d44f4085d729dd28178ce24fa0d09a39222dea1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
