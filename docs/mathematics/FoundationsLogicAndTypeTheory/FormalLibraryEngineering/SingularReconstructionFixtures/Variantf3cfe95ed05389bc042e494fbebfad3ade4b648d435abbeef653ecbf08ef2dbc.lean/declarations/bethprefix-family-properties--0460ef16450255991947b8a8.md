# bethPrefix_family_properties

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e07aec0-e911-8371-19c1-93df948aa543",
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
  "slug": "bethprefix-family-properties--0460ef16450255991947b8a8",
  "source": {
    "blob": "019425eb42950705037014f504bb4fe5e07efb6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variantf3cfe95ed05389bc042e494fbebfad3ade4b648d435abbeef653ecbf08ef2dbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0460ef16450255991947b8a86b7920f86272db657485f01f29561e92690697ed",
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

Occurrence: `result:3e07aec0-e911-8371-19c1-93df948aa543`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–67.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variantf3cfe95ed05389bc042e494fbebfad3ade4b648d435abbeef653ecbf08ef2dbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variantf3cfe95ed05389bc042e494fbebfad3ade4b648d435abbeef653ecbf08ef2dbc.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `019425eb42950705037014f504bb4fe5e07efb6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
