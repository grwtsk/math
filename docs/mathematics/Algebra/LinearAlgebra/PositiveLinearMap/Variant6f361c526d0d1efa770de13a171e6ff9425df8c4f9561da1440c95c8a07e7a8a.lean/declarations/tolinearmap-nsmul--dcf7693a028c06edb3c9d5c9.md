# toLinearMap_nsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6b135e6-da8e-db2c-aa32-adf9e36f318b",
  "kind": "lemma",
  "lexical_name": "toLinearMap_nsmul",
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
  "slug": "tolinearmap-nsmul--dcf7693a028c06edb3c9d5c9",
  "source": {
    "blob": "9442e62c836eaa3525c379663600dcfebb45bbee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 194,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveLinearMap/Variant6f361c526d0d1efa770de13a171e6ff9425df8c4f9561da1440c95c8a07e7a8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcf7693a028c06edb3c9d5c932b8201b1141c2867c8db98e8321f1a72ec6de1c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveLinearMap/Variant6f361c526d0d1efa770de13a171e6ff9425df8c4f9561da1440c95c8a07e7a8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6b135e6-da8e-db2c-aa32-adf9e36f318b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toLinearMap_nsmul (f : E₁ →ₚ[R] E₂) (n : ℕ) :
    (n • f).toLinearMap = n • f.toLinearMap :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveLinearMap/Variant6f361c526d0d1efa770de13a171e6ff9425df8c4f9561da1440c95c8a07e7a8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveLinearMap/Variant6f361c526d0d1efa770de13a171e6ff9425df8c4f9561da1440c95c8a07e7a8a.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9442e62c836eaa3525c379663600dcfebb45bbee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
