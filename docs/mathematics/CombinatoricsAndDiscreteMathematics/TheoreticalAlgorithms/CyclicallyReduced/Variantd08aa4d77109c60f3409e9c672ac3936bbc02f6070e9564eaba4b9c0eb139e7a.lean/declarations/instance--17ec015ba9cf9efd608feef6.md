# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1b091a2fdd084c49df9d2e86a7e7504399b0e70e5e81e5b7e1b73118e78b9d9",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--17ec015ba9cf9efd608feef6",
  "source": {
    "blob": "d30c816183dc6a2f17e0778a2c2154979c8fd9c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 223,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CyclicallyReduced/Variantd08aa4d77109c60f3409e9c672ac3936bbc02f6070e9564eaba4b9c0eb139e7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17ec015ba9cf9efd608feef66402d9bcf0570e01a50351939d19a42467e3e0c2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CyclicallyReduced/Variantd08aa4d77109c60f3409e9c672ac3936bbc02f6070e9564eaba4b9c0eb139e7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1b091a2fdd084c49df9d2e86a7e7504399b0e70e5e81e5b7e1b73118e78b9d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsMulTorsionFree (FreeGroup α) where
  pow_left_injective n hn x y heq := by
    classical
    let f (a : FreeGroup α) (n : ℕ) : ℕ :=
        (conjugator a.toWord).length + (n * (reduceCyclically a.toWord).length +
          (conjugator a.toWord).length)
    let g (a : FreeGroup α) (k : ℕ) : List (α × Bool) :=
        conjugator a.toWord ++ ((replicate k (reduceCyclically a.toWord)).flatten ++
          invRev (conjugator a.toWord))
    have heq₂ : x ^ (2 * n) = y ^ (2 * n) := by simp_rw [mul_comm, pow_mul, heq]
    replace heq : g x n = g y n := by
      simpa [toWord_pow, reduce_flatten_replicate, isReduced_toWord, hn] using congr_arg toWord heq
    replace heq₂ : g x (2 * n) = g y (2 * n) := by
      simpa [toWord_pow, reduce_flatten_replicate, isReduced_toWord, hn] using congr_arg toWord heq₂
    have leq : f x n = f y n := by simpa [g] using congr_arg List.length heq
    have leq₂ : f x (2 * n) = f y (2 * n) := by simpa [g] using congr_arg List.length heq₂
    obtain ⟨hc, heq'⟩ := List.append_inj heq (by grind)
    obtain ⟨n, rfl⟩ := Nat.exists_eq_add_one_of_ne_zero hn
    have hm : reduceCyclically x.toWord = reduceCyclically y.toWord := by
      simp only [replicate_succ, flatten_cons, append_assoc] at heq'
      exact (List.append_inj heq' <| mul_left_cancel₀ hn <| by grind).1
    have := congr_arg mk <| (conj_conjugator_reduceCyclically x.toWord).symm
    rwa [hc, hm, conj_conjugator_reduceCyclically, mk_toWord, mk_toWord] at this

end IsMulTorsionFree
end FreeGroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CyclicallyReduced/Variantd08aa4d77109c60f3409e9c672ac3936bbc02f6070e9564eaba4b9c0eb139e7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CyclicallyReduced/Variantd08aa4d77109c60f3409e9c672ac3936bbc02f6070e9564eaba4b9c0eb139e7a.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d30c816183dc6a2f17e0778a2c2154979c8fd9c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
