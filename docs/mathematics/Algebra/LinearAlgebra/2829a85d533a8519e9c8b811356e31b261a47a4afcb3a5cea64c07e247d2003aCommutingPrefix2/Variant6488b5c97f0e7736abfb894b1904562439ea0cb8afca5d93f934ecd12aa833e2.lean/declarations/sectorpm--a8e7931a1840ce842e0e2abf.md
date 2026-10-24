# sectorPM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb956954030943f97fd9f99819f82f965be61576ea0c711be19707023b8be66f",
  "kind": "def",
  "lexical_name": "sectorPM",
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
  "slug": "sectorpm--a8e7931a1840ce842e0e2abf",
  "source": {
    "blob": "e36eb986893660c7c68962b60847392aba13d399",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 162,
    "path": "GRWTSK/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8e7931a1840ce842e0e2abf8fb5763cbe7671b2c5f94c2a8401075892d0ecaa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb956954030943f97fd9f99819f82f965be61576ea0c711be19707023b8be66f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sectorPM : V →ₗ[ℝ] V :=
  (involutionPlus C.first).comp (involutionMinus C.second)

/-- The -+ sector projector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e36eb986893660c7c68962b60847392aba13d399` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
