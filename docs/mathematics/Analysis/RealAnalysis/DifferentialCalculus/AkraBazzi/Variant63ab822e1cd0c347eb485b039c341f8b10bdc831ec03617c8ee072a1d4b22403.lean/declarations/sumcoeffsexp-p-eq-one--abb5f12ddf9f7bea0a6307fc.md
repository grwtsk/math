# sumCoeffsExp_p_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a2a3df4-bb35-fe1e-a9b5-7afceba52497",
  "kind": "lemma",
  "lexical_name": "sumCoeffsExp_p_eq_one",
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
  "slug": "sumcoeffsexp-p-eq-one--abb5f12ddf9f7bea0a6307fc",
  "source": {
    "blob": "470ce2f8aaada3e7158edb7db4dcdb2e3543282e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 570,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abb5f12ddf9f7bea0a6307fca7b7ebd89ec9187154dcef9768612246080979d7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a2a3df4-bb35-fe1e-a9b5-7afceba52497`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 570–585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sumCoeffsExp_p_eq_one : ∑ i, a i * (b i) ^ p a b = 1 := by
  simp only [p]
  exact Function.invFun_eq (by rw [← Set.mem_range]; exact R.one_mem_range_sumCoeffsExp)

/-!
#### The sum transform

This section defines the "sum transform" of a function `g` as
`∑ u ∈ Finset.Ico n₀ n, g u / u^(p+1)`,
and uses it to define `asympBound` as the bound satisfied by an Akra-Bazzi recurrence.

Several properties of the sum transform are then proven.
-/

/-- The transformation which turns a function `g` into
`n^p * ∑ u ∈ Finset.Ico n₀ n, g u / u^(p+1)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean#L570).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `470ce2f8aaada3e7158edb7db4dcdb2e3543282e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
