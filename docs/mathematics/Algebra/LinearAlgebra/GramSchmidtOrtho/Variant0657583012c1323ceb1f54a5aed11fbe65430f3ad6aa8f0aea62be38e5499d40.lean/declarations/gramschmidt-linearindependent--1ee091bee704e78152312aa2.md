# gramSchmidt_linearIndependent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2460361c-721f-a472-42b5-4f3d2f353144",
  "kind": "theorem",
  "lexical_name": "gramSchmidt_linearIndependent",
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
  "slug": "gramschmidt-linearindependent--1ee091bee704e78152312aa2",
  "source": {
    "blob": "3f8be2b03e4cade39b9ab5b87b8448e28bb18f11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 234,
    "path": "GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ee091bee704e78152312aa2d7f4d9a09a68f671c514033bb94c4e98f0555f0e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2460361c-721f-a472-42b5-4f3d2f353144`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gramSchmidt_linearIndependent {f : ι → E} (h₀ : LinearIndependent 𝕜 f) :
    LinearIndependent 𝕜 (gramSchmidt 𝕜 f) :=
  linearIndependent_of_ne_zero_of_inner_eq_zero (fun _ => gramSchmidt_ne_zero _ h₀) fun _ _ =>
    gramSchmidt_orthogonal 𝕜 f

/-- When given a basis, `gramSchmidt` produces a basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f8be2b03e4cade39b9ab5b87b8448e28bb18f11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
