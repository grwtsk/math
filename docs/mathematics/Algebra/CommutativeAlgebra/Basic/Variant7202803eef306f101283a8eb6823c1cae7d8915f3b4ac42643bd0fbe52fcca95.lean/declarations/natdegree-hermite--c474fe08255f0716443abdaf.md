# natDegree_hermite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd6b419a-0b44-712f-0bc3-0f7f5aeacebd",
  "kind": "theorem",
  "lexical_name": "natDegree_hermite",
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
  "slug": "natdegree-hermite--c474fe08255f0716443abdaf",
  "source": {
    "blob": "2e58b965ad60186d8b83940ed94147d89273c412",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 128,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant7202803eef306f101283a8eb6823c1cae7d8915f3b4ac42643bd0fbe52fcca95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c474fe08255f0716443abdaf73fac4fdd8576f10778dd157d4cc11ebf475c4c9",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant7202803eef306f101283a8eb6823c1cae7d8915f3b4ac42643bd0fbe52fcca95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd6b419a-0b44-712f-0bc3-0f7f5aeacebd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_hermite {n : ℕ} : (hermite n).natDegree = n :=
  natDegree_eq_of_degree_eq_some (degree_hermite n)
#align polynomial.nat_degree_hermite Polynomial.natDegree_hermite

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant7202803eef306f101283a8eb6823c1cae7d8915f3b4ac42643bd0fbe52fcca95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant7202803eef306f101283a8eb6823c1cae7d8915f3b4ac42643bd0fbe52fcca95.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e58b965ad60186d8b83940ed94147d89273c412` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
