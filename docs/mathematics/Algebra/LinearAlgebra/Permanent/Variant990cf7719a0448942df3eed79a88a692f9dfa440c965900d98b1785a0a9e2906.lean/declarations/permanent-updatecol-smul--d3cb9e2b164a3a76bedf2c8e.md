# permanent_updateCol_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a73a503c-f5f5-0752-34f1-7acc4a50f90f",
  "kind": "theorem",
  "lexical_name": "permanent_updateCol_smul",
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
  "slug": "permanent-updatecol-smul--d3cb9e2b164a3a76bedf2c8e",
  "source": {
    "blob": "14084f0346a906fc6a9b4720ad236f9374d1ad10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 108,
    "path": "GRWTSK/Algebra/LinearAlgebra/Permanent/Variant990cf7719a0448942df3eed79a88a692f9dfa440c965900d98b1785a0a9e2906.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3cb9e2b164a3a76bedf2c8e3089f026d7fba67afb1f31b011a8f63a671e58ee",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Permanent/Variant990cf7719a0448942df3eed79a88a692f9dfa440c965900d98b1785a0a9e2906.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a73a503c-f5f5-0752-34f1-7acc4a50f90f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem permanent_updateCol_smul (M : Matrix n n R) (j : n) (c : R) (u : n → R) :
    permanent (updateCol M j <| c • u) = c * permanent (updateCol M j u) := by
  simp only [permanent, ← mul_prod_erase _ _ (mem_univ j), updateCol_self, Pi.smul_apply,
    smul_eq_mul, mul_sum, ← mul_assoc]
  congr 1 with p
  rw [Finset.prod_congr rfl (fun i hi ↦ ?_)]
  simp only [ne_eq, ne_of_mem_erase hi, not_false_eq_true, updateCol_ne]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Permanent/Variant990cf7719a0448942df3eed79a88a692f9dfa440c965900d98b1785a0a9e2906.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Permanent/Variant990cf7719a0448942df3eed79a88a692f9dfa440c965900d98b1785a0a9e2906.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14084f0346a906fc6a9b4720ad236f9374d1ad10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
