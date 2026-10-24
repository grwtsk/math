# char_dvd_card_solutions_of_add_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18fc9c12babf207bd3eac7e15bd3b75fb1cfd095",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a917e4288d250f2960d77b7c6d0216e01ca7d60aef23d81ddb162a00eceafd3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bad4549d-c49a-ab16-b75c-b8a0ba876199",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a82b9daa-ba79-e5f0-6164-23ba929dd0f3",
  "kind": "theorem",
  "lexical_name": "char_dvd_card_solutions_of_add_lt",
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
  "slug": "char-dvd-card-solutions-of-add-lt--de6d43c235f768e7ada014c1",
  "source": {
    "blob": "18fc9c12babf207bd3eac7e15bd3b75fb1cfd095",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 190,
    "path": "GRWTSK/Algebra/FieldTheory/ChevalleyWarning/Variant2a917e4288d250f2960d77b7c6d0216e01ca7d60aef23d81ddb162a00eceafd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de6d43c235f768e7ada014c199425dbab46f79f95f980ccdd7597c4df3b8e55c",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/ChevalleyWarning/Variant2a917e4288d250f2960d77b7c6d0216e01ca7d60aef23d81ddb162a00eceafd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a82b9daa-ba79-e5f0-6164-23ba929dd0f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem char_dvd_card_solutions_of_add_lt {f₁ f₂ : MvPolynomial σ K}
    (h : f₁.totalDegree + f₂.totalDegree < Fintype.card σ) :
    p ∣ Fintype.card { x : σ → K // eval x f₁ = 0 ∧ eval x f₂ = 0 } := by
  let F : Bool → MvPolynomial σ K := fun b => cond b f₂ f₁
  have : (∑ b : Bool, (F b).totalDegree) < Fintype.card σ := (add_comm _ _).trans_lt h
  simpa only [Bool.forall_bool] using! char_dvd_card_solutions_of_fintype_sum_lt p this

end FiniteField
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/ChevalleyWarning/Variant2a917e4288d250f2960d77b7c6d0216e01ca7d60aef23d81ddb162a00eceafd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/ChevalleyWarning/Variant2a917e4288d250f2960d77b7c6d0216e01ca7d60aef23d81ddb162a00eceafd3.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18fc9c12babf207bd3eac7e15bd3b75fb1cfd095` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
