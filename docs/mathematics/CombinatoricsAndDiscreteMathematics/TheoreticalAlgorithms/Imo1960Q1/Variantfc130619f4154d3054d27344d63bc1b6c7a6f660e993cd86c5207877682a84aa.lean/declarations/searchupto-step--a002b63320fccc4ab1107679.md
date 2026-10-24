# searchUpTo_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df450b7c95bf40a142da1d1e9251cbf9f95817b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc130619f4154d3054d27344d63bc1b6c7a6f660e993cd86c5207877682a84aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81da5254-f5fa-2e8d-4039-d8975e0e9090",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17db1532-2134-6a3b-69a4-141044a9b63a",
  "kind": "theorem",
  "lexical_name": "searchUpTo_step",
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
  "slug": "searchupto-step--a002b63320fccc4ab1107679",
  "source": {
    "blob": "df450b7c95bf40a142da1d1e9251cbf9f95817b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 76,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1960Q1/Variantfc130619f4154d3054d27344d63bc1b6c7a6f660e993cd86c5207877682a84aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a002b63320fccc4ab1107679b1c544d3a9a74235c1b6df5112dda73da62d6f2b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1960Q1/Variantfc130619f4154d3054d27344d63bc1b6c7a6f660e993cd86c5207877682a84aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17db1532-2134-6a3b-69a4-141044a9b63a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem searchUpTo_step {c n} (H : SearchUpTo c n) {c' n'} (ec : c + 1 = c') (en : n + 11 = n') {l}
    (el : Nat.digits 10 n = l) (H' : c = sumOfSquares l → c = 50 ∨ c = 73) : SearchUpTo c' n' := by
  subst ec; subst en; subst el
  obtain ⟨rfl, H⟩ := H
  refine' ⟨by ring, fun m l p => _⟩
  obtain ⟨h₁, ⟨m, rfl⟩, h₂⟩ := id p
  by_cases h : 11 * m < c * 11; · exact H _ h p
  obtain rfl : m = c := by linarith
  rw [Nat.mul_div_cancel_left _ (by norm_num : 11 > 0), mul_comm] at h₂
  refine' (H' h₂).imp _ _ <;> · rintro rfl; norm_num
#align imo1960_q1.search_up_to_step Imo1960Q1.searchUpTo_step

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1960Q1/Variantfc130619f4154d3054d27344d63bc1b6c7a6f660e993cd86c5207877682a84aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1960Q1/Variantfc130619f4154d3054d27344d63bc1b6c7a6f660e993cd86c5207877682a84aa.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df450b7c95bf40a142da1d1e9251cbf9f95817b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
