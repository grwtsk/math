# eval_toANF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3ade73b-5393-d8dc-8c3b-c9fdc0536847",
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
  "slug": "eval-toanf--3e9a07d6d7632197eb8ed4fd",
  "source": {
    "blob": "b14e77061c98c656270d872a4980d1fd6c841f9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 288,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ANF/Variantd49b40f543815784f5ecbbcfd7687e2a92fc1497972476d82d0bc98c7b11723d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e9a07d6d7632197eb8ed4fda526c97638f641c651563fa904badd6e8feacdf2",
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

Occurrence: `result:c3ade73b-5393-d8dc-8c3b-c9fdc0536847`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem eval_toANF
    (ν : Valuation α)
    (p : Tree α) :
    ANF.Polynomial.eval ν (toANF p) = Tree.eval ν p := by
  induction p with
  | var a => simp [toANF, Tree.eval]
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [toANF, Tree.eval, ih]
  | conj p q ihp ihq => simp [toANF, Tree.eval, ihp, ihq]
  | disj p q ihp ihq => simp [toANF, Tree.eval, ihp, ihq]
  | impl p q ihp ihq => simp [toANF, Tree.eval, ihp, ihq]
  | eqv p q ihp ihq => simp [toANF, Tree.eval, ihp, ihq]
  | nand p q ihp ihq => simp [toANF, Tree.eval, ihp, ihq]

end Tree

namespace Formula

/-- Convert a formula into executable algebraic normal form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ANF/Variantd49b40f543815784f5ecbbcfd7687e2a92fc1497972476d82d0bc98c7b11723d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ANF/Variantd49b40f543815784f5ecbbcfd7687e2a92fc1497972476d82d0bc98c7b11723d.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b14e77061c98c656270d872a4980d1fd6c841f9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
