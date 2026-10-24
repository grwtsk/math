# shortComplexH2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7725fce02fb5bcd72b7eb9226e29f5a761979125764e66e38a0a66a771f4dd33",
  "kind": "def",
  "lexical_name": "shortComplexH2",
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
  "slug": "shortcomplexh2--df7c23e45dc5bf9ac20dcbae",
  "source": {
    "blob": "bbbc305e7aa9b49ef24cf28f574ec3b8a74cf92e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 230,
    "path": "GRWTSK/Algebra/LinearAlgebra/LowDegree/Variantedc86d2633df1cb4271cdfc3ae3b5a730733ee453bcaa039b4eb533cf1847cad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df7c23e45dc5bf9ac20dcbae40a6b9629acc79e4fe9a7664315d836fc162ee36",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LowDegree/Variantedc86d2633df1cb4271cdfc3ae3b5a730733ee453bcaa039b4eb533cf1847cad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7725fce02fb5bcd72b7eb9226e29f5a761979125764e66e38a0a66a771f4dd33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shortComplexH2 : ShortComplex (ModuleCat k) :=
  moduleCatMk (dOne A) (dTwo A) (dTwo_comp_dOne A)

end Differentials

section Cocycles

/-- The 1-cocycles `Z¹(G, A)` of `A : Rep k G`, defined as the kernel of the map
`Fun(G, A) → Fun(G × G, A)` sending `(f, (g₁, g₂)) ↦ ρ_A(g₁)(f(g₂)) - f(g₁g₂) + f(g₁).` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LowDegree/Variantedc86d2633df1cb4271cdfc3ae3b5a730733ee453bcaa039b4eb533cf1847cad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LowDegree/Variantedc86d2633df1cb4271cdfc3ae3b5a730733ee453bcaa039b4eb533cf1847cad.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbbc305e7aa9b49ef24cf28f574ec3b8a74cf92e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
