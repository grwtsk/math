# squarefree_minpoly_mod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b0387d2-1ef1-3d1f-d81d-04e1e730ed38",
  "kind": "theorem",
  "lexical_name": "squarefree_minpoly_mod",
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
  "slug": "squarefree-minpoly-mod--12e136ee6b48ab248e05f12e",
  "source": {
    "blob": "813eddf5d02976a6910bf8e38414979fcf03ca47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 79,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12e136ee6b48ab248e05f12e145ccc356a586d43d82bd459c36eeff963d657aa",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b0387d2-1ef1-3d1f-d81d-04e1e730ed38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarefree_minpoly_mod {p : ℕ} [Fact p.Prime] (hdiv : ¬p ∣ n) :
    Squarefree (map (Int.castRingHom (ZMod p)) (minpoly ℤ μ)) :=
  (separable_minpoly_mod h hdiv).squarefree

/-- Let `P` be the minimal polynomial of a root of unity `μ` and `Q` be the minimal polynomial of
`μ ^ p`, where `p` is a natural number that does not divide `n`. Then `P` divides `expand ℤ p Q`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `813eddf5d02976a6910bf8e38414979fcf03ca47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
