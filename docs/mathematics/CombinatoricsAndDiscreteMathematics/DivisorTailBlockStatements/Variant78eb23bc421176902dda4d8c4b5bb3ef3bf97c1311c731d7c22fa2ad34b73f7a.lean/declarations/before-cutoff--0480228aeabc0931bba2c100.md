# before_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10478486-12df-99e7-4677-5e0f73bf8b49",
  "kind": "theorem",
  "lexical_name": "before_cutoff",
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
  "slug": "before-cutoff--0480228aeabc0931bba2c100",
  "source": {
    "blob": "270ddb499b2d049c74d1b4c76941b2749c7c7b70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 26,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant78eb23bc421176902dda4d8c4b5bb3ef3bf97c1311c731d7c22fa2ad34b73f7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0480228aeabc0931bba2c1003998f8d96c004d3ff8ae5e60ea5ba331187ed91d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant78eb23bc421176902dda4d8c4b5bb3ef3bf97c1311c731d7c22fa2ad34b73f7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10478486-12df-99e7-4677-5e0f73bf8b49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem before_cutoff (X n : ℕ) (hn : n ≤ X) :
    (∑ d ∈ n.divisors.filter (fun d => d ≤ X), (moebius d : ℝ)) =
      if n = 1 then 1 else 0 := by
  rw [show n.divisors.filter (fun d => d ≤ X) = n.divisors by
    apply Finset.filter_eq_self.mpr
    intro d hd
    exact (Nat.le_of_dvd (Nat.pos_of_ne_zero (Nat.ne_zero_of_mem_divisors hd)) (Nat.dvd_of_mem_divisors hd)).trans hn]
  exact divisor_sum n

/-- On the first open dyadic tail block, the missing full divisor is exactly n. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant78eb23bc421176902dda4d8c4b5bb3ef3bf97c1311c731d7c22fa2ad34b73f7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant78eb23bc421176902dda4d8c4b5bb3ef3bf97c1311c731d7c22fa2ad34b73f7a.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `270ddb499b2d049c74d1b4c76941b2749c7c7b70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
