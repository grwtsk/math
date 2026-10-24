# _root_.AddMonoidAlgebra.mul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9706c9b466583d8b09be87322ad67b1499129f98367de7b757b80df79d404ab",
  "kind": "def",
  "lexical_name": "_root_.AddMonoidAlgebra.mul'",
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
  "slug": "root-addmonoidalgebra-mul--21e29e51f077f30cde507e97",
  "source": {
    "blob": "41fa24e7b349efb6c692ac71a55ac42616a53d74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 485,
    "path": "GRWTSK/Algebra/Defs/Variantc3f9206e7816fdbae33be08913cfc9d893744526eeffb812d363beeeaf05322e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21e29e51f077f30cde507e97154237c9508c6c15ae03ea71c235fe3f9a4a6000",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantc3f9206e7816fdbae33be08913cfc9d893744526eeffb812d363beeeaf05322e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9706c9b466583d8b09be87322ad67b1499129f98367de7b757b80df79d404ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.AddMonoidAlgebra.mul' [Add M] (x y : AddMonoidAlgebra R M) : AddMonoidAlgebra R M :=
  x.coeff.sum fun m₁ r₁ ↦ y.coeff.sum fun m₂ r₂ ↦ .single (m₁ + m₂) (r₁ * r₂)
/-- The multiplication in a monoid algebra.

We make it irreducible so that Lean doesn't unfold it when trying to unify two different things. -/
@[to_additive existing mul', no_expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantc3f9206e7816fdbae33be08913cfc9d893744526eeffb812d363beeeaf05322e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantc3f9206e7816fdbae33be08913cfc9d893744526eeffb812d363beeeaf05322e.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41fa24e7b349efb6c692ac71a55ac42616a53d74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
