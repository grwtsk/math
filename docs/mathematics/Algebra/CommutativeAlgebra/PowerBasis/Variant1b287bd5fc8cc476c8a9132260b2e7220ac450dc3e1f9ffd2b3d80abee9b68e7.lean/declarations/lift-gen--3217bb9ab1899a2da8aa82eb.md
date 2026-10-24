# lift_gen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f750eed5-e8e5-5158-717d-55cb3ae09f1a",
  "kind": "theorem",
  "lexical_name": "lift_gen",
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
  "slug": "lift-gen--3217bb9ab1899a2da8aa82eb",
  "source": {
    "blob": "793eb36b4907170e6f62daefcbad72b68b648852",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 308,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3217bb9ab1899a2da8aa82eb9cd4d9b762c320564c7bbdb4216eab9d78dbd249",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f750eed5-e8e5-5158-717d-55cb3ae09f1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_gen (pb : PowerBasis A S) (y : S') (hy : aeval y (minpoly A pb.gen) = 0) :
    pb.lift y hy pb.gen = y :=
  pb.constr_pow_gen hy
#align power_basis.lift_gen PowerBasis.lift_gen

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `793eb36b4907170e6f62daefcbad72b68b648852` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
