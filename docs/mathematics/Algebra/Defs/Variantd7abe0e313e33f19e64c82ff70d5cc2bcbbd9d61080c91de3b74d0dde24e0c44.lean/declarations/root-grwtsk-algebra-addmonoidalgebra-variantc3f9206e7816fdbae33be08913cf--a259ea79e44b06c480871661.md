# _root_.GRWTSK.Algebra.AddMonoidAlgebra.Variantc3f9206e7816fdbae33be08913cfc9d893744526eeffb812d363beeeaf05322e.AddMonoidAlgebra.mul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37be70cc3fd2f7e6c58fc7fbb63c9e261bf4d58a2862a1e707a8ed2b0007f2ee",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.AddMonoidAlgebra.Variantc3f9206e7816fdbae33be08913cfc9d893744526eeffb812d363beeeaf05322e.AddMonoidAlgebra.mul'",
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
  "slug": "root-grwtsk-algebra-addmonoidalgebra-variantc3f9206e7816fdbae33be08913cf--a259ea79e44b06c480871661",
  "source": {
    "blob": "2e737d979213502792bd6d26fb6def1cf6ffe393",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 493,
    "path": "GRWTSK/Algebra/Defs/Variantd7abe0e313e33f19e64c82ff70d5cc2bcbbd9d61080c91de3b74d0dde24e0c44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a259ea79e44b06c480871661da0e816e7567a47444be0a600146dac810cd0e19",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantd7abe0e313e33f19e64c82ff70d5cc2bcbbd9d61080c91de3b74d0dde24e0c44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37be70cc3fd2f7e6c58fc7fbb63c9e261bf4d58a2862a1e707a8ed2b0007f2ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.AddMonoidAlgebra.Variantc3f9206e7816fdbae33be08913cfc9d893744526eeffb812d363beeeaf05322e.AddMonoidAlgebra.mul' [Add M] (x y : AddMonoidAlgebra R M) : AddMonoidAlgebra R M :=
  x.coeff.sum fun m₁ r₁ ↦ y.coeff.sum fun m₂ r₂ ↦ .single (m₁ + m₂) (r₁ * r₂)
/-- The multiplication in a monoid algebra.

We make it irreducible so that Lean doesn't unfold it when trying to unify two different things. -/
@[to_additive existing mul', no_expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantd7abe0e313e33f19e64c82ff70d5cc2bcbbd9d61080c91de3b74d0dde24e0c44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantd7abe0e313e33f19e64c82ff70d5cc2bcbbd9d61080c91de3b74d0dde24e0c44.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e737d979213502792bd6d26fb6def1cf6ffe393` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
