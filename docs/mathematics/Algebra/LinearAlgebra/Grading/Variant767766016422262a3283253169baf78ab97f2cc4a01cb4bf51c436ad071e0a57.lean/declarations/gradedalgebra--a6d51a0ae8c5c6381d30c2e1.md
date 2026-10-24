# GradedAlgebra.ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:096efee1b3e867de99e65cb299f005b3c9e6940e0b15a894a98a755a14c98f6b",
  "kind": "def",
  "lexical_name": "GradedAlgebra.ι",
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
  "slug": "gradedalgebra--a6d51a0ae8c5c6381d30c2e1",
  "source": {
    "blob": "bacb6d1d414589e4e57a2fcc90eb80c376e9f7d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 35,
    "path": "GRWTSK/Algebra/LinearAlgebra/Grading/Variant767766016422262a3283253169baf78ab97f2cc4a01cb4bf51c436ad071e0a57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6d51a0ae8c5c6381d30c2e15f1eb651f6c4cde5217850e683838181914df1c2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Grading/Variant767766016422262a3283253169baf78ab97f2cc4a01cb4bf51c436ad071e0a57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:096efee1b3e867de99e65cb299f005b3c9e6940e0b15a894a98a755a14c98f6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def GradedAlgebra.ι :
    M →ₗ[R] ⨁ i : ℕ, ⋀[R]^i M :=
  DirectSum.lof R ℕ (fun i => ⋀[R]^i M) 1 ∘ₗ
    (ι R).codRestrict _ fun m => by simpa only [pow_one] using LinearMap.mem_range_self _ m

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Grading/Variant767766016422262a3283253169baf78ab97f2cc4a01cb4bf51c436ad071e0a57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Grading/Variant767766016422262a3283253169baf78ab97f2cc4a01cb4bf51c436ad071e0a57.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bacb6d1d414589e4e57a2fcc90eb80c376e9f7d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
