# OrderIso.equivClosureOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f44878043945ca38541aa2caf32f05ddc3e8fd88a007998c0ccba70715ec690",
  "kind": "def",
  "lexical_name": "OrderIso.equivClosureOperator",
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
  "slug": "orderiso-equivclosureoperator--aa5668c327f690761f7d8dcc",
  "source": {
    "blob": "d71f559b434691f09afc463c5795f9ec90bfa5fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 310,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variantde1961685618ec89d2ca23f7ad7f6465c9a116882b4c9f3518b6535590357cf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa5668c327f690761f7d8dcc8e73e5ee023759881eb173dc1d02902c9be18383",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/Variantde1961685618ec89d2ca23f7ad7f6465c9a116882b4c9f3518b6535590357cf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f44878043945ca38541aa2caf32f05ddc3e8fd88a007998c0ccba70715ec690`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OrderIso.equivClosureOperator {α β} [Preorder α] [Preorder β] (e : α ≃o β) :
    ClosureOperator α ≃ ClosureOperator β where
  toFun     c := c.conjBy e
  invFun    c := c.conjBy e.symm
  left_inv  c := Eq.trans (c.conjBy_trans _ _).symm
                 <| Eq.trans (congrArg _ e.self_trans_symm) c.conjBy_refl
  right_inv c := Eq.trans (c.conjBy_trans _ _).symm
                 <| Eq.trans (congrArg _ e.symm_trans_self) c.conjBy_refl

/-! ### Lower adjoint -/


variable {α} {β : Type*}

/-- A lower adjoint of `u` on the preorder `α` is a function `l` such that `l` and `u` form a Galois
connection. It allows us to define closure operators whose output does not match the input. In
practice, `u` is often `(↑) : β → α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/Variantde1961685618ec89d2ca23f7ad7f6465c9a116882b4c9f3518b6535590357cf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variantde1961685618ec89d2ca23f7ad7f6465c9a116882b4c9f3518b6535590357cf1.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d71f559b434691f09afc463c5795f9ec90bfa5fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
