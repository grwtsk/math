# CNF.Clause.convertLRAT_sat_of_sat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "11b302583ed871b6cd60bd726186bc979d8015b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67dd49ec-eab7-9aec-e3ff-d091d1deeb9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:896ba84c-f116-7bf0-64c7-8c8b535e10bd",
  "kind": "theorem",
  "lexical_name": "CNF.Clause.convertLRAT_sat_of_sat",
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
  "slug": "cnf-clause-convertlrat-sat-of-sat--60a4fd583161db042ed54220",
  "source": {
    "blob": "11b302583ed871b6cd60bd726186bc979d8015b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 67,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60a4fd583161db042ed542204bceb1e33cf2329a5c347722d28b53a6eb7ba3ad",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:896ba84c-f116-7bf0-64c7-8c8b535e10bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CNF.Clause.convertLRAT_sat_of_sat (clause : CNF.Clause (PosFin n))
    (h : Clause.convertLRAT' clause = some lratClause) :
    clause.eval assign → assign ⊨ lratClause := by
  intro h2
  simp only [CNF.Clause.eval, List.any_eq_true] at h2
  simp only [(· ⊨ ·), Clause.eval, List.any_eq_true, decide_eq_true_eq]
  rcases h2 with ⟨lit, ⟨hlit1, hlit2⟩⟩
  apply Exists.intro lit
  constructor
  · simp only [Clause.toList, DefaultClause.toList]
    simp only [convertLRAT'] at h
    exact CNF.Clause.mem_lrat_of_mem clause hlit1 h
  · simp_all

/--
Convert a `CNF Nat` with a certain maximum variable number into the `DefaultFormula`
format for usage with `bv_decide`'s `LRAT.Internal`.

Notably this:
1. Increments all variables as DIMACS variables start at 1 instead of 0
2. Adds a leading `none` clause. This clause *must* be persistent as the LRAT checker wants to have
  the DIMACS file line by line and the DIMACS file begins with the `p cnf x y` meta instruction.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11b302583ed871b6cd60bd726186bc979d8015b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
