# comp_coprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b8a82bd-364b-588d-4375-2f3f17095949",
  "kind": "theorem",
  "lexical_name": "comp_coprod",
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
  "slug": "comp-coprod--f9b31d37326bdcd501569f0f",
  "source": {
    "blob": "1abc55c5d0d9ef0de22f29f14d4abce14dbd2c26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 302,
    "path": "GRWTSK/Algebra/GroupTheory/Prod/Variant30d3b510bcae5d80720f3c50608dd591467dd012b8c6040cc459ddb7e665efcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9b31d37326bdcd501569f0fa0db09fa471fec26f67e2f9daf8f6ee4b10c69f7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Prod/Variant30d3b510bcae5d80720f3c50608dd591467dd012b8c6040cc459ddb7e665efcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b8a82bd-364b-588d-4375-2f3f17095949`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_coprod {Q : Type*} [CommSemigroup Q] (h : P →ₙ* Q) (f : M →ₙ* P) (g : N →ₙ* P) :
    h.comp (f.coprod g) = (h.comp f).coprod (h.comp g) :=
  ext fun x => by simp

end Coprod

end MulHom

namespace MonoidHom

variable (M N) [MulOneClass M] [MulOneClass N]

/-- Given monoids `M`, `N`, the natural projection homomorphism from `M × N` to `M`. -/
@[to_additive
      "Given additive monoids `A`, `B`, the natural projection homomorphism
      from `A × B` to `A`"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Prod/Variant30d3b510bcae5d80720f3c50608dd591467dd012b8c6040cc459ddb7e665efcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Prod/Variant30d3b510bcae5d80720f3c50608dd591467dd012b8c6040cc459ddb7e665efcb.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1abc55c5d0d9ef0de22f29f14d4abce14dbd2c26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
