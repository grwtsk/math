# twoHeadsArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61f6e0cbccac311b0296bbba4f12b1490cae058a8633a652d84bf9e738d71afd",
  "kind": "def",
  "lexical_name": "twoHeadsArgs",
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
  "slug": "twoheadsargs--4b8fbff9b0a8fc709cd1a7bc",
  "source": {
    "blob": "22f5c723b7c4823e8d7123b3af865ae9d6cb9caf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 243,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variant3dc4652ae1ef3a5e4595688ba42cd7396e5b11bca0201443d0905cc1c4d4239a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b8fbff9b0a8fc709cd1a7bcf543bd14a1ecf5c17b5aa71a7f8f5bd5a89443d1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ComputeDegree/Variant3dc4652ae1ef3a5e4595688ba42cd7396e5b11bca0201443d0905cc1c4d4239a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61f6e0cbccac311b0296bbba4f12b1490cae058a8633a652d84bf9e738d71afd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def twoHeadsArgs (e : Expr) : Name × Name × (Name ⊕ Name) × List Bool := Id.run do
  let (eq_or_le, lhs, rhs) ← match e.getAppFnArgs with
    | (na@``Eq, #[_, lhs, rhs])       => pure (na, lhs, rhs)
    | (na@``LE.le, #[_, _, lhs, rhs]) => pure (na, lhs, rhs)
    | (na@``LT.lt, #[_, _, lhs, rhs]) => pure (na, lhs, rhs)
    | _ => return (.anonymous, .anonymous, .inl .anonymous, [])
  let (ndeg_or_deg_or_coeff, pol, and?) ← match lhs.getAppFnArgs with
    | (na@``Polynomial.natDegree, #[_, _, pol])     => (na, pol, [rhs.isMVar])
    | (na@``Polynomial.degree,    #[_, _, pol])     => (na, pol, [rhs.isMVar])
    -- Since `Polynomial.coeff` returns a `Finsupp`, `coeff p n` is the `DFunLike.coe` of the
    -- `Finsupp` `coeff p` applied to `n`.
    | (``DFunLike.coe, #[_, _, _, _, cf, c]) =>
      match cf.getAppFnArgs with
        | (``Polynomial.coeff, #[_, _, pol]) => (``Polynomial.coeff, pol, [rhs.isMVar, c.isMVar])
        | _ => return (.anonymous, eq_or_le, .inl .anonymous, [])
    | _ => return (.anonymous, eq_or_le, .inl .anonymous, [])
  let head := match pol.numeral? with
    -- can I avoid the tri-splitting `n = 0`, `n = 1`, and generic `n`?
    | some 0 => .inl `zero
    | some 1 => .inl `one
    | some _ => .inl `many
    | none => match pol.getAppFnArgs with
      | (``DFunLike.coe, #[_, _, _, _, polFun, _]) =>
        let na := polFun.getAppFn.constName
        if na ∈ [``Polynomial.monomial, ``Polynomial.C] then
          .inr na
        else
          .inl .anonymous
      | (na, _) => .inr na
  (ndeg_or_deg_or_coeff, eq_or_le, head, and?)

/--
`getCongrLemma (lhs_name, rel_name, Mvars?)` returns the name of a lemma that preprocesses
one of the seven targets
*  `natDegree f ≤ d`;
*  `natDegree f < d`;
*  `natDegree f = d`;
*  `degree f ≤ d`;
*  `degree f < d`;
*  `degree f = d`.
*  `coeff f d = r`.

The end goals are of the form
* `natDegree f ≤ ?_`, `degree f ≤ ?_`, `coeff f ?_ = ?_`, or `?_ < d` with fresh metavariables;
* `coeff f m ≠ s` with `m, s` not necessarily metavariables;
* several equalities/inequalities between expressions and assignments for metavariables.

`getCongrLemma` gets called at the very beginning of `compute_degree` and whenever an intermediate
goal does not have the right metavariables.
Note that the side-goals of the congruence lemma are neither of the form `natDegree f = d` nor
of the form `degree f = d`.

`getCongrLemma` admits an optional "debug" flag: `getCongrLemma data true` prints the name of
the congruence lemma that it returns.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ComputeDegree/Variant3dc4652ae1ef3a5e4595688ba42cd7396e5b11bca0201443d0905cc1c4d4239a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variant3dc4652ae1ef3a5e4595688ba42cd7396e5b11bca0201443d0905cc1c4d4239a.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22f5c723b7c4823e8d7123b3af865ae9d6cb9caf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
