# mkMulHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea4e7bb87ce3fa698540084a666953873b8002580529cfa42dcff68653a5d61c",
  "kind": "def",
  "lexical_name": "mkMulHom",
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
  "slug": "mkmulhom--21f39dbcf82a08e3e0cf3eb9",
  "source": {
    "blob": "91967b7850818f9a0ed89a5aaea8e47b3b9cf821",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 46,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Variantb1189bcfd7c38d529d1b33054886c31816c791dd24b6c17c3263d27b3f1dc0e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21f39dbcf82a08e3e0cf3eb9fa88257b413eaa73280be9c07dd24ef9c890fc25",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Variantb1189bcfd7c38d529d1b33054886c31816c791dd24b6c17c3263d27b3f1dc0e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea4e7bb87ce3fa698540084a666953873b8002580529cfa42dcff68653a5d61c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkMulHom (c : Con M) : MulHom M c.Quotient where
  toFun := (↑)
  map_mul' _ _ := rfl

/-- The kernel of a multiplicative homomorphism as a congruence relation. -/
@[to_additive /-- The kernel of an additive homomorphism as an additive congruence relation. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Variantb1189bcfd7c38d529d1b33054886c31816c791dd24b6c17c3263d27b3f1dc0e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Variantb1189bcfd7c38d529d1b33054886c31816c791dd24b6c17c3263d27b3f1dc0e6.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91967b7850818f9a0ed89a5aaea8e47b3b9cf821` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
