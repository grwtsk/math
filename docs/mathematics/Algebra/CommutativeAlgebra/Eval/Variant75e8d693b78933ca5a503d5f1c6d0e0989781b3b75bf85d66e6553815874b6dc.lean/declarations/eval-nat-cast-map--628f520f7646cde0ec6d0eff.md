# eval_nat_cast_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17db88bd5fb21df3f6231c4b3a6eef1e280a477b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 971,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75e8d693b78933ca5a503d5f1c6d0e0989781b3b75bf85d66e6553815874b6dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:463d4ac3-a37e-3988-d082-6a1bf5e42d17",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7c32631-ca4e-8538-362c-109ec5ec6456",
  "kind": "theorem",
  "lexical_name": "eval_nat_cast_map",
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
  "slug": "eval-nat-cast-map--628f520f7646cde0ec6d0eff",
  "source": {
    "blob": "17db88bd5fb21df3f6231c4b3a6eef1e280a477b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 981,
    "line": 971,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant75e8d693b78933ca5a503d5f1c6d0e0989781b3b75bf85d66e6553815874b6dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:628f520f7646cde0ec6d0effd9f2d4d189cb9ad5e7a8ee143856221034ffc251",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Eval/Variant75e8d693b78933ca5a503d5f1c6d0e0989781b3b75bf85d66e6553815874b6dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7c32631-ca4e-8538-362c-109ec5ec6456`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 971–981.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_nat_cast_map (f : R →+* S) (p : R[X]) (n : ℕ) :
    (p.map f).eval (n : S) = f (p.eval n) := by
  -- Porting note: `apply` → `induction`
  induction p using Polynomial.induction_on' with
  | h_add p q hp hq =>
    simp only [hp, hq, Polynomial.map_add, RingHom.map_add, eval_add]
  | h_monomial n r =>
    simp only [map_natCast f, eval_monomial, map_monomial, f.map_pow, f.map_mul]
#align polynomial.eval_nat_cast_map Polynomial.eval_nat_cast_map

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Eval/Variant75e8d693b78933ca5a503d5f1c6d0e0989781b3b75bf85d66e6553815874b6dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant75e8d693b78933ca5a503d5f1c6d0e0989781b3b75bf85d66e6553815874b6dc.lean#L971).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17db88bd5fb21df3f6231c4b3a6eef1e280a477b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
