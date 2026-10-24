# transcendental_iff_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c3d0b22-e363-b622-3eb1-c3f4ba6b1f00",
  "kind": "theorem",
  "lexical_name": "transcendental_iff_injective",
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
  "slug": "transcendental-iff-injective--80b6ddb0d5b831d63fa9b8e2",
  "source": {
    "blob": "965e9965ffaf7a90d74c43cbb8b7f0999ebf51ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 110,
    "path": "GRWTSK/Algebra/Basic/Variante193f788b27f16ab19d1cf361e12e8a0c9b697f50e7c3896c0711d79b5ec5bef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80b6ddb0d5b831d63fa9b8e29071faca917b0eb7dd1f219cedffda5df273b724",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variante193f788b27f16ab19d1cf361e12e8a0c9b697f50e7c3896c0711d79b5ec5bef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c3d0b22-e363-b622-3eb1-c3f4ba6b1f00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transcendental_iff_injective {x : A} :
    Transcendental R x ↔ Function.Injective (Polynomial.aeval x : R[X] →ₐ[R] A) :=
  isAlgebraic_iff_not_injective.not_left

/-- An element `x` is transcendental over `R` if and only if the kernel of the ring homomorphism
`Polynomial.aeval x` is the zero ideal. This is similar to `algebraicIndependent_iff_ker_eq_bot`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variante193f788b27f16ab19d1cf361e12e8a0c9b697f50e7c3896c0711d79b5ec5bef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variante193f788b27f16ab19d1cf361e12e8a0c9b697f50e7c3896c0711d79b5ec5bef.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `965e9965ffaf7a90d74c43cbb8b7f0999ebf51ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
