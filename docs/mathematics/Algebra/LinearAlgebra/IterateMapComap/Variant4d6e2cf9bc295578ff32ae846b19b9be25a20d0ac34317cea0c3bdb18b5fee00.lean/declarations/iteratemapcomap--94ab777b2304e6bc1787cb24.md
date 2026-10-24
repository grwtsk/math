# iterateMapComap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ddc8a52d2d3b4fadf5090f8f6e04315c9a529c8008ec588e835618a9265c0cc5",
  "kind": "def",
  "lexical_name": "iterateMapComap",
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
  "slug": "iteratemapcomap--94ab777b2304e6bc1787cb24",
  "source": {
    "blob": "17151086e867c50cd9bafa7324adc6604e9ee74d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 50,
    "path": "GRWTSK/Algebra/LinearAlgebra/IterateMapComap/Variant4d6e2cf9bc295578ff32ae846b19b9be25a20d0ac34317cea0c3bdb18b5fee00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94ab777b2304e6bc1787cb24e8b180947ab3af094afbe7413316cf2940c6e4f2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IterateMapComap/Variant4d6e2cf9bc295578ff32ae846b19b9be25a20d0ac34317cea0c3bdb18b5fee00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ddc8a52d2d3b4fadf5090f8f6e04315c9a529c8008ec588e835618a9265c0cc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def iterateMapComap (n : ℕ) := (fun K : Submodule R N ↦ (K.map i).comap f)^[n]

/-- If `f(K) ≤ i(K)`, then `LinearMap.iterateMapComap` is not decreasing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IterateMapComap/Variant4d6e2cf9bc295578ff32ae846b19b9be25a20d0ac34317cea0c3bdb18b5fee00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IterateMapComap/Variant4d6e2cf9bc295578ff32ae846b19b9be25a20d0ac34317cea0c3bdb18b5fee00.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17151086e867c50cd9bafa7324adc6604e9ee74d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
