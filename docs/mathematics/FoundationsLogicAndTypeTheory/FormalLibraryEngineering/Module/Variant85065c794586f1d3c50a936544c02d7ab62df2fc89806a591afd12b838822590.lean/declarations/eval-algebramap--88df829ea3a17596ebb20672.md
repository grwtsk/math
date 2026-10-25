# eval_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:208fcdba-0b9a-9b6c-8309-d73167431194",
  "kind": "theorem",
  "lexical_name": "eval_algebraMap",
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
  "slug": "eval-algebramap--88df829ea3a17596ebb20672",
  "source": {
    "blob": "4cf76646a476458159968607aa90e48ef58ed52b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 239,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant85065c794586f1d3c50a936544c02d7ab62df2fc89806a591afd12b838822590.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88df829ea3a17596ebb20672dc833eebe4cb8c1b48262c620df1699ebb181729",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant85065c794586f1d3c50a936544c02d7ab62df2fc89806a591afd12b838822590.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:208fcdba-0b9a-9b6c-8309-d73167431194`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_algebraMap [CommSemiring S] [Semiring R] [Algebra S R] [AddMonoid M] [SMul S M]
    [MulAction R M] [IsScalarTower S R M] (l : NF S M) :
    (l.algebraMap R).eval = l.eval := by
  induction l with
  | nil => rfl
  | cons p l ih => simp only [algebraMap_cons, eval_cons, ih, IsScalarTower.algebraMap_smul]

end NF
end

public meta section
variable {u v : Level}

/-! ### Lists of expressions representing scalars and vectors, and operations on such lists -/

/-- Basic meta-code "normal form" object of the `match_scalars` and `module` tactics: a type synonym
for a list of ordered triples comprising expressions representing terms of two types `R` and `M`
(where typically `M` is an `R`-module), together with a natural number "index".

The natural number represents the index of the `M` term in the `AtomM` monad: this is not enforced,
but is sometimes assumed in operations.  Thus when items `((a₁, x₁), k)` and `((a₂, x₂), k)`
appear in two different `Module.qNF` objects (i.e. with the same `ℕ`-index `k`), it is expected that
the expressions `x₁` and `x₂` are the same.  It is also expected that the items in a `Module.qNF`
list are in strictly increasing order by natural-number index.

By forgetting the natural number indices, an expression representing a `Mathlib.Tactic.Module.NF`
object can be built from a `Module.qNF` object; this construction is provided as
`Mathlib.Tactic.Module.qNF.toNF`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant85065c794586f1d3c50a936544c02d7ab62df2fc89806a591afd12b838822590.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant85065c794586f1d3c50a936544c02d7ab62df2fc89806a591afd12b838822590.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cf76646a476458159968607aa90e48ef58ed52b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
