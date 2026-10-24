# MulHom.inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3cb897225787e442d47118422cf706710c6577fb2ad91ab13ce7bf2ad43db6a7",
  "kind": "def",
  "lexical_name": "MulHom.inverse",
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
  "slug": "mulhom-inverse--e23aaa79f909c5ebd95bef6a",
  "source": {
    "blob": "c337586e765e6071301aa476c16fa611584f6ce0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 56,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant575081681bd764640102b3bb12cd8c43376493e9d1f4bedf25296c2e54780bbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e23aaa79f909c5ebd95bef6ae135ce7b4056e67ab2101f7d918e5239458179d0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant575081681bd764640102b3bb12cd8c43376493e9d1f4bedf25296c2e54780bbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3cb897225787e442d47118422cf706710c6577fb2ad91ab13ce7bf2ad43db6a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MulHom.inverse [Mul M] [Mul N] (f : M →ₙ* N) (g : N → M)
    (h₁ : Function.LeftInverse g f)
    (h₂ : Function.RightInverse g f) : N →ₙ* M where
  toFun := g
  map_mul' x y :=
    calc
      g (x * y) = g (f (g x) * f (g y)) := by rw [h₂ x, h₂ y]
      _ = g (f (g x * g y)) := by rw [f.map_mul]
      _ = g x * g y := h₁ _
#align mul_hom.inverse MulHom.inverse
#align add_hom.inverse AddHom.inverse

/-- The inverse of a bijective `MonoidHom` is a `MonoidHom`. -/
@[to_additive (attr := simps)
  "The inverse of a bijective `AddMonoidHom` is an `AddMonoidHom`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant575081681bd764640102b3bb12cd8c43376493e9d1f4bedf25296c2e54780bbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant575081681bd764640102b3bb12cd8c43376493e9d1f4bedf25296c2e54780bbb.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c337586e765e6071301aa476c16fa611584f6ce0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
