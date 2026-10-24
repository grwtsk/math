# getElem_flatten

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c38c1e16-a12d-f538-608c-57f6781e148b",
  "kind": "theorem",
  "lexical_name": "getElem_flatten",
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
  "slug": "getelem-flatten--6a0c778d4f48b81bc0196d8c",
  "source": {
    "blob": "e4cb8afacbb397f3713921fd9b2e41658893545e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1944,
    "line": 1917,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4cf1b17180c4c56211c67b59fa98d88da6b2963041398a57a4dd02e9d7fb1733.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a0c778d4f48b81bc0196d8c5e3643a26ffae4099769e20af4909b8776a4771b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4cf1b17180c4c56211c67b59fa98d88da6b2963041398a57a4dd02e9d7fb1733.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c38c1e16-a12d-f538-608c-57f6781e148b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1917–1944.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem getElem_flatten {xss : Vector (Vector β m) n} {i : Nat} (hi : i < n * m) :
    xss.flatten[i] =
      haveI : i / m < n := by rwa [Nat.div_lt_iff_lt_mul (Nat.pos_of_lt_mul_left hi)]
      haveI : i % m < m := Nat.mod_lt _ (Nat.pos_of_lt_mul_left hi)
      xss[i / m][i % m] := by
  rcases xss with ⟨⟨l⟩, rfl⟩
  simp only [flatten_mk, List.map_toArray, getElem_mk, List.getElem_toArray, Array.flatten_toArray]
  induction l generalizing i with
  | nil => simp at hi
  | cons xs l ih =>
    simp only [List.map_cons, List.map_map, List.flatten_cons, toList_toArray]
    by_cases h : i < m
    · rw [List.getElem_append_left (by simpa)]
      have h₁ : i / m = 0 := Nat.div_eq_of_lt h
      have h₂ : i % m = i := Nat.mod_eq_of_lt h
      simp [h₁, h₂]
    · have h₁ : xs.toList.length ≤ i := by simp; omega
      rw [List.getElem_append_right h₁]
      simp only [length_toList]
      specialize ih (i := i - m) (by simp_all [Nat.add_one_mul]; omega)
      have h₂ : i / m = (i - m) / m + 1 := by
        conv => lhs; rw [show i = i - m + m by omega]
        rw [Nat.add_div_right]
        exact Nat.pos_of_lt_mul_left hi
      simp only [length_toList] at h₁
      have h₃ : (i - m) % m = i % m := (Nat.mod_eq_sub_mod h₁).symm
      simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4cf1b17180c4c56211c67b59fa98d88da6b2963041398a57a4dd02e9d7fb1733.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4cf1b17180c4c56211c67b59fa98d88da6b2963041398a57a4dd02e9d7fb1733.lean#L1917).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4cb8afacbb397f3713921fd9b2e41658893545e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
