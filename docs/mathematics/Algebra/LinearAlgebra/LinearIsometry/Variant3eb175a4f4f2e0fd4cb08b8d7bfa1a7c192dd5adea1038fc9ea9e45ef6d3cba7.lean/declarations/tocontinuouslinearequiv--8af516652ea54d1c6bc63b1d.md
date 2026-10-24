# toContinuousLinearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4337f37e5b4db834afcef621ba2b29e0c3f21db65f57fc795496949b10f17d53",
  "kind": "def",
  "lexical_name": "toContinuousLinearEquiv",
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
  "slug": "tocontinuouslinearequiv--8af516652ea54d1c6bc63b1d",
  "source": {
    "blob": "b34cd00c041c4c10d8ec6e3ffb2d6d583574137f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 597,
    "line": 595,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearIsometry/Variant3eb175a4f4f2e0fd4cb08b8d7bfa1a7c192dd5adea1038fc9ea9e45ef6d3cba7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8af516652ea54d1c6bc63b1da3090a327a10af8fb92210eea550d45392822f6b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearIsometry/Variant3eb175a4f4f2e0fd4cb08b8d7bfa1a7c192dd5adea1038fc9ea9e45ef6d3cba7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4337f37e5b4db834afcef621ba2b29e0c3f21db65f57fc795496949b10f17d53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 595–597.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toContinuousLinearEquiv : E ≃SL[σ₁₂] E₂ :=
  { e.toLinearIsometry.toContinuousLinearMap, e.toHomeomorph with }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearIsometry/Variant3eb175a4f4f2e0fd4cb08b8d7bfa1a7c192dd5adea1038fc9ea9e45ef6d3cba7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearIsometry/Variant3eb175a4f4f2e0fd4cb08b8d7bfa1a7c192dd5adea1038fc9ea9e45ef6d3cba7.lean#L595).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b34cd00c041c4c10d8ec6e3ffb2d6d583574137f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
