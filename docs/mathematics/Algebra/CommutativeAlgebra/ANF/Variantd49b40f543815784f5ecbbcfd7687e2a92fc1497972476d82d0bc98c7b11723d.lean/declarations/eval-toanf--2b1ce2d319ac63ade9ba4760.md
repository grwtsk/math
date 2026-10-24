# eval_toANF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04e22587-c846-01b2-14e9-ccdfba206aa6",
  "kind": "theorem",
  "lexical_name": "eval_toANF",
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
  "slug": "eval-toanf--2b1ce2d319ac63ade9ba4760",
  "source": {
    "blob": "b14e77061c98c656270d872a4980d1fd6c841f9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 318,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ANF/Variantd49b40f543815784f5ecbbcfd7687e2a92fc1497972476d82d0bc98c7b11723d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b1ce2d319ac63ade9ba47600b744eac24db9c753d7ad35e77786147142caa92",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ANF/Variantd49b40f543815784f5ecbbcfd7687e2a92fc1497972476d82d0bc98c7b11723d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04e22587-c846-01b2-14e9-ccdfba206aa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem eval_toANF
    (ν : Valuation α)
    (p : Formula α) :
    Tree.ANF.Polynomial.eval ν (toANF p) = Formula.eval ν p := by
  induction p with
  | var a => simp [toANF, Formula.eval]
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [toANF, Formula.eval, ih]
  | conj p q ihp ihq => simp [toANF, Formula.eval, ihp, ihq]
  | disj p q ihp ihq => simp [toANF, Formula.eval, ihp, ihq]
  | impl p q ihp ihq => simp [toANF, Formula.eval, ihp, ihq]
  | eqv p q ihp ihq => simp [toANF, Formula.eval, ihp, ihq]

end Formula

end Boolean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ANF/Variantd49b40f543815784f5ecbbcfd7687e2a92fc1497972476d82d0bc98c7b11723d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ANF/Variantd49b40f543815784f5ecbbcfd7687e2a92fc1497972476d82d0bc98c7b11723d.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b14e77061c98c656270d872a4980d1fd6c841f9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
