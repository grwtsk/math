# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd1501892a98ab8bce981091b426954ccaff3b833eb4b75d5d0bfc218c25c5e8",
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
  "slug": "instance--e6d405e36d8c636b26fdf2fa",
  "source": {
    "blob": "caaabc2f77800cb6936e65b3928c4a62170140cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 205,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quaternion/Variant8c841f59b60be792dd45a4454fb509e4d6ab8f4e8abae54e91968da0f80bcdc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6d405e36d8c636b26fdf2fad4e60c35925cc746f306f82fc1c4ee07d4a25535",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quaternion/Variant8c841f59b60be792dd45a4454fb509e4d6ab8f4e8abae54e91968da0f80bcdc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd1501892a98ab8bce981091b426954ccaff3b833eb4b75d5d0bfc218c25c5e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Add ℍ[R,c₁,c₂,c₃] :=
  ⟨fun a b => ⟨a.1 + b.1, a.2 + b.2, a.3 + b.3, a.4 + b.4⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quaternion/Variant8c841f59b60be792dd45a4454fb509e4d6ab8f4e8abae54e91968da0f80bcdc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quaternion/Variant8c841f59b60be792dd45a4454fb509e4d6ab8f4e8abae54e91968da0f80bcdc2.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caaabc2f77800cb6936e65b3928c4a62170140cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
