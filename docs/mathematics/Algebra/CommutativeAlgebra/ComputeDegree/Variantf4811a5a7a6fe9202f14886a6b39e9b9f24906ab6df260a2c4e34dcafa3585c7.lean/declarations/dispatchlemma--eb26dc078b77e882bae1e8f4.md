# dispatchLemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0847da5cf2a2749e87494389667f73916282f2cb0509a71be482623e2cddf979",
  "kind": "def",
  "lexical_name": "dispatchLemma",
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
  "slug": "dispatchlemma--eb26dc078b77e882bae1e8f4",
  "source": {
    "blob": "ba2e8c8da198f8aee873714934135d9e06d6bb94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 293,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb26dc078b77e882bae1e8f49fb19f582175c544c9642b8b7393bc0e42391c4d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0847da5cf2a2749e87494389667f73916282f2cb0509a71be482623e2cddf979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dispatchLemma
    (twoH : Name × Name × (Name ⊕ Name) × List Bool) (debug : Bool := false) : Name :=
  match twoH with
    | (.anonymous, _, _) => ``id -- `twoH` gave default value, so we do nothing
    | (_, .anonymous, _) => ``id -- `twoH` gave default value, so we do nothing
    | (na1, na2, head, bools) =>
      let msg := f!"\ndispatchLemma:\n  {head}"
      -- if there is some non-metavariable on the way, we "congr" it away
      if false ∈ bools then getCongrLemma (na1, na2, bools) debug
      else
      -- otherwise, we select either the first, second or third element of the triple in `nas` below
      let π (natDegLE : Name) (degLE : Name) (coeff : Name) : Name := Id.run do
        let lem := match na1, na2 with
          | ``natDegree, ``LE.le => natDegLE
          | ``degree, ``LE.le => degLE
          | ``coeff, ``Eq => coeff
          | _, ``LE.le => ``le_rfl
          | _, _ => ``rfl
        if debug then
          dbg_trace f!"{lem.lastComponentAsString}\n{msg}"
        lem
      match head with
        | .inl `zero => π ``natDegree_zero_le ``degree_zero_le ``coeff_zero
        | .inl `one  => π ``natDegree_one_le ``degree_one_le ``coeff_one
        | .inl `many => π ``natDegree_natCast_le ``degree_natCast_le ``coeff_natCast_ite
        | .inl .anonymous => π ``le_rfl ``le_rfl ``rfl
        | .inr ``HAdd.hAdd =>
          π ``natDegree_add_le_of_le ``degree_add_le_of_le ``coeff_add_of_eq
        | .inr ``HSub.hSub =>
          π ``natDegree_sub_le_of_le ``degree_sub_le_of_le ``coeff_sub_of_eq
        | .inr ``HMul.hMul =>
          π ``natDegree_mul_le_of_le ``degree_mul_le_of_le ``coeff_mul_add_of_le_natDegree_of_eq_ite
        | .inr ``HPow.hPow =>
          π ``natDegree_pow_le_of_le ``degree_pow_le_of_le ``coeff_pow_of_natDegree_le_of_eq_ite'
        | .inr ``Neg.neg =>
          π ``natDegree_neg_le_of_le ``degree_neg_le_of_le ``coeff_neg
        | .inr ``Polynomial.X =>
          π ``natDegree_X_le ``degree_X_le ``coeff_X
        | .inr ``Nat.cast =>
          π ``natDegree_natCast_le ``degree_natCast_le ``coeff_natCast_ite
        | .inr ``NatCast.natCast =>
          π ``natDegree_natCast_le ``degree_natCast_le ``coeff_natCast_ite
        | .inr ``Int.cast =>
          π ``natDegree_intCast_le ``degree_intCast_le ``coeff_intCast_ite
        | .inr ``IntCast.intCast =>
          π ``natDegree_intCast_le ``degree_intCast_le ``coeff_intCast_ite
        | .inr ``Polynomial.monomial =>
          π ``natDegree_monomial_le ``degree_monomial_le ``coeff_monomial
        | .inr ``Polynomial.C =>
          π ``natDegree_C_le ``degree_C_le ``coeff_C
        | .inr ``HSMul.hSMul =>
          π ``natDegree_smul_le_of_le ``degree_smul_le_of_le ``coeff_smul
        | _ => π ``le_rfl ``le_rfl ``rfl

/-- `try_rfl mvs` takes as input a list of `MVarId`s, scans them partitioning them into two
lists: the goals containing some metavariables and the goals not containing any metavariable.

If a goal containing a metavariable has the form `?_ = x`, `x = ?_`, where `?_` is a metavariable
and `x` is an expression that does not involve metavariables, then it closes this goal using `rfl`,
effectively assigning the metavariable to `x`.

If a goal does not contain metavariables, it tries `rfl` on it.

It returns the list of `MVarId`s, beginning with the ones that initially involved (`Expr`)
metavariables followed by the rest.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba2e8c8da198f8aee873714934135d9e06d6bb94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
