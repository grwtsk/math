# descend_mkQ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0605eab9-ad25-e3da-41cb-a2511bdf11cf",
  "kind": "theorem",
  "lexical_name": "descend_mkQ",
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
  "slug": "descend-mkq--d0f9e1891febb855a7eab8fb",
  "source": {
    "blob": "b7df436e4daaeb731b2cb59771efbcc99ac878f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 92,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0f9e1891febb855a7eab8fb6961a2a2ca9581754dd8f93c6a88f15965bf733f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0605eab9-ad25-e3da-41cb-a2511bdf11cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem descend_mkQ (J : Submodule R V) (Q : V → T) (hQ : CosetInvariant J Q)
    (x : V) : descend J Q hQ (Submodule.Quotient.mk x) = Q x := rfl

/-- Arbitrary-function factorization requires constancy on all cosets, rather than
only agreement at points of the kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7df436e4daaeb731b2cb59771efbcc99ac878f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
