# mk_one_mul_one_sub_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "573be53173ec1e7dcad83d95fd65556f49523066",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d50ac81-ff31-a879-2922-44c059682837",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91da4780-cd65-40f1-0685-a33d65e02686",
  "kind": "theorem",
  "lexical_name": "mk_one_mul_one_sub_eq_one",
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
  "slug": "mk-one-mul-one-sub-eq-one--fb74990b36349e3698353d7f",
  "source": {
    "blob": "573be53173ec1e7dcad83d95fd65556f49523066",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 74,
    "path": "GRWTSK/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb74990b36349e3698353d7fd5a3512aae76ce63d4672922df30090227af7ee3",
  "verification": {
    "reference": "docs/verification/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91da4780-cd65-40f1-0685-a33d65e02686`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_one_mul_one_sub_eq_one : (mk 1 : S⟦X⟧) * (1 - X) = 1 := by
  rw [mul_comm, PowerSeries.ext_iff]
  intro n
  cases n with
  | zero => simp
  | succ n => simp [sub_mul]

/--
Note that `mk 1` is the constant function `1` so the power series `1 + X + X^2 + ...`. This theorem
states that for any `d : ℕ`, `(1 + X + X^2 + ... : S⟦X⟧) ^ (d + 1)` is equal to the power series
`mk fun n => Nat.choose (d + n) d : S⟦X⟧`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `573be53173ec1e7dcad83d95fd65556f49523066` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
