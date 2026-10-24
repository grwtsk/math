# piecewise_Ici_descPochhammer_eval_zero_eq_descFactorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af9738747a343e3e08735bf0cf94d35b319ef86b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4561503-b6cf-e391-4825-e7063a5820cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94a1ddc2-a0d4-57c5-2b00-633639054e21",
  "kind": "lemma",
  "lexical_name": "piecewise_Ici_descPochhammer_eval_zero_eq_descFactorial",
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
  "slug": "piecewise-ici-descpochhammer-eval-zero-eq-descfactorial--6cbf91a3e70abcab42f5cd74",
  "source": {
    "blob": "af9738747a343e3e08735bf0cf94d35b319ef86b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cbf91a3e70abcab42f5cd74c2525cb54d6f345a11a3c68d45a66467bf5df7f4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94a1ddc2-a0d4-57c5-2b00-633639054e21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma piecewise_Ici_descPochhammer_eval_zero_eq_descFactorial (k n : ℕ) :
    (Set.Ici (n - 1 : ℝ)).piecewise (descPochhammer ℝ n).eval 0 k
      = k.descFactorial n := by
  rw [Set.piecewise, descPochhammer_eval_eq_descFactorial, ite_eq_left_iff, Set.mem_Ici, not_le,
    eq_comm, Pi.zero_apply, Nat.cast_eq_zero, Nat.descFactorial_eq_zero_iff_lt, ← @Nat.cast_lt ℝ]
  exact (sub_lt_self (n : ℝ) zero_lt_one).trans'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af9738747a343e3e08735bf0cf94d35b319ef86b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
