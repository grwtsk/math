# subtypeDomain_finsupp_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19e67aa8-2b00-2d7a-d756-a7ed2cb341d2",
  "kind": "theorem",
  "lexical_name": "subtypeDomain_finsupp_sum",
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
  "slug": "subtypedomain-finsupp-sum--b2766baca03f5e77b867731b",
  "source": {
    "blob": "5c7263856ff3b8c2d85f1a4dd475ca5cf7757239",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 398,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2766baca03f5e77b867731b543df319b4d9aa205a5afbd6de1f106a0a157617",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19e67aa8-2b00-2d7a-d756-a7ed2cb341d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subtypeDomain_finsupp_sum {ι} {β : ι → Type v} {δ : γ → Type x} [DecidableEq γ]
    [∀ c, Zero (δ c)] [∀ (c) (x : δ c), Decidable (x ≠ 0)]
    [∀ i, AddCommMonoid (β i)] {p : ι → Prop} [DecidablePred p]
    {s : Π₀ c, δ c} {h : ∀ c, δ c → Π₀ i, β i} :
    (s.sum h).subtypeDomain p = s.sum fun c d => (h c d).subtypeDomain p :=
  subtypeDomain_sum

end ProdAndSum

end DFinsupp

/-! ### Product and sum lemmas for bundled morphisms.

In this section, we provide analogues of `AddMonoidHom.map_sum`, `AddMonoidHom.coe_finset_sum`,
and `AddMonoidHom.finset_sum_apply` for `DFinsupp.sum` and `DFinsupp.sumAddHom` instead of
`Finset.sum`.

We provide these for `AddMonoidHom`, `MonoidHom`, `RingHom`, `AddEquiv`, and `MulEquiv`.

Lemmas for `LinearMap` and `LinearEquiv` are in another file.
-/


section

variable [DecidableEq ι]

namespace MonoidHom

variable {R S : Type*}
variable [∀ i, Zero (β i)] [∀ (i) (x : β i), Decidable (x ≠ 0)]

@[to_additive (attr := simp, norm_cast)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c7263856ff3b8c2d85f1a4dd475ca5cf7757239` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
