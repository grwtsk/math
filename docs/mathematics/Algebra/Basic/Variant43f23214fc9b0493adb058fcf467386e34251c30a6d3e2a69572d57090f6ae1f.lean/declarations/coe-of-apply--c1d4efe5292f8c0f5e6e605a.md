# coe_of_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "164b38c75a3ab44187c161adcae0783dfaed43e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 375,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b31b3ea9-154f-ed85-8697-87daa2593374",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93b295d8-3ea4-342c-4f76-1a626fde7fe8",
  "kind": "theorem",
  "lexical_name": "coe_of_apply",
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
  "slug": "coe-of-apply--c1d4efe5292f8c0f5e6e605a",
  "source": {
    "blob": "164b38c75a3ab44187c161adcae0783dfaed43e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 375,
    "path": "GRWTSK/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1d4efe5292f8c0f5e6e605a8068c9b8c745333841c94c42e45c5435be590816",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93b295d8-3ea4-342c-4f76-1a626fde7fe8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_of_apply {M S : Type*} [DecidableEq ι] [AddCommMonoid M] [SetLike S M]
    [AddSubmonoidClass S M] {A : ι → S} (i j : ι) (x : A i) :
    (of (fun i ↦ {x // x ∈ A i}) i x j : M) = if i = j then x else 0 := by
  obtain rfl | h := Decidable.eq_or_ne i j
  · rw [DirectSum.of_eq_same, if_pos rfl]
  · rw [DirectSum.of_eq_of_ne _ _ _ h, if_neg h, ZeroMemClass.coe_zero, ZeroMemClass.coe_zero]

/-- The `DirectSum` formed by a collection of additive submonoids (or subgroups, or submodules) of
`M` is said to be internal if the canonical map `(⨁ i, A i) →+ M` is bijective.

For the alternate statement in terms of independence and spanning, see
`DirectSum.subgroup_isInternal_iff_iSupIndep_and_supr_eq_top` and
`DirectSum.isInternal_submodule_iff_iSupIndep_and_iSup_eq_top`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `164b38c75a3ab44187c161adcae0783dfaed43e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
