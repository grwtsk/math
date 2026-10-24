# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f9fba91af9dc9c74bc2b5dcc2f983d5a286963e6a3bd5e3cabfa271d6d44ada",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a7a06162b7a82ba6bcb8c57e",
  "source": {
    "blob": "813129667a9e0ca0fa466dfa5676fa562b8a5db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 328,
    "path": "GRWTSK/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7a06162b7a82ba6bcb8c57e35ad19496791b2aaac12d810bd05fb03b6a43d06",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f9fba91af9dc9c74bc2b5dcc2f983d5a286963e6a3bd5e3cabfa271d6d44ada`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) CommGroupWithZero.toDivisionCommMonoid : DivisionCommMonoid G₀ :=
  { ‹CommGroupWithZero G₀›, GroupWithZero.toDivisionMonoid with }
#align comm_group_with_zero.to_division_comm_monoid CommGroupWithZero.toDivisionCommMonoid

end CommGroupWithZero

section NoncomputableDefs

open Classical

variable {M : Type*} [Nontrivial M]

/-- Constructs a `GroupWithZero` structure on a `MonoidWithZero`
  consisting only of units and 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `813129667a9e0ca0fa466dfa5676fa562b8a5db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
