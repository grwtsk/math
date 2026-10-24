# interleave_flatten_flatten_of_length_eq_length

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3b20bc5-47e6-bbe9-c2a9-dd1d02aa966d",
  "kind": "theorem",
  "lexical_name": "interleave_flatten_flatten_of_length_eq_length",
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
  "slug": "interleave-flatten-flatten-of-length-eq-length--06d58348aed8e1ad6ff3abe8",
  "source": {
    "blob": "ced47711b408d5c510320d432fb9f2ad44030234",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06d58348aed8e1ad6ff3abe8677909cb937775f163aee786bce1a1d8dc096ec8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3b20bc5-47e6-bbe9-c2a9-dd1d02aa966d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interleave_flatten_flatten_of_length_eq_length :
    ∀ {L₁ L₂ : List (List α)} (h₁₂ : L₁.length = L₂.length),
      (∀ i (hi : i + 1 < L₁.length), length L₁[i] = length L₂[i]) →
        L₁.flatten.interleave L₂.flatten = (zipWith interleave L₁ L₂).flatten
  | [], [], _, _ => by simp
  | [_], [_], _, _ => by simp
  | _ :: _ :: _, l :: _ :: _, _, h => by
    rw [flatten_cons, flatten_cons (l := l), zipWith_cons_cons, flatten_cons (l := interleave ..),
      interleave_append_append_of_length_eq_length (by simpa using h 0),
      interleave_flatten_flatten_of_length_eq_length (by grind) fun i => by simpa using h i.succ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ced47711b408d5c510320d432fb9f2ad44030234` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
