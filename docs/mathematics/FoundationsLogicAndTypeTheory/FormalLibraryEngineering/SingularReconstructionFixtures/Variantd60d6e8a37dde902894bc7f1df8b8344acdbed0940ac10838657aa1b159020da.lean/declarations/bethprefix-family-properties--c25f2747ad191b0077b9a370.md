# bethPrefix_family_properties

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06fd143c-02fc-98b3-4ca7-10ad0d5d8005",
  "kind": "theorem",
  "lexical_name": "bethPrefix_family_properties",
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
  "slug": "bethprefix-family-properties--c25f2747ad191b0077b9a370",
  "source": {
    "blob": "77535da7bb537c5cad78c75146c80d33b3365163",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variantd60d6e8a37dde902894bc7f1df8b8344acdbed0940ac10838657aa1b159020da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c25f2747ad191b0077b9a37096110af10074c6a47bdc604aca74a0b840fbe316",
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

Occurrence: `result:06fd143c-02fc-98b3-4ca7-10ad0d5d8005`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bethPrefix_family_properties :
    #(Set.range bethPrefix) ≤ Cardinal.beth (Ordinal.omega0 : Ordinal.{0}) ∧
      ∀ C ∈ Set.range bethPrefix, #C < Cardinal.beth (Ordinal.omega0 : Ordinal.{0}) := by
  constructor
  · exact Cardinal.mk_range_le.trans
      (by rw [Cardinal.mk_nat]; exact beth_omega_uncountable.le)
  · rintro C ⟨n, rfl⟩
    rw [bethPrefix_card]
    exact Cardinal.beth_lt_beth.mpr (Ordinal.natCast_lt_omega0 n)

/-- The full countable family supplies a covering witness even for a target
of size beth_omega. The strict threshold is succ aleph_0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variantd60d6e8a37dde902894bc7f1df8b8344acdbed0940ac10838657aa1b159020da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variantd60d6e8a37dde902894bc7f1df8b8344acdbed0940ac10838657aa1b159020da.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77535da7bb537c5cad78c75146c80d33b3365163` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
