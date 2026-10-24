# cyclotomic_eq_prod_X_pow_sub_one_pow_moebius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f853660d247b96b7f961ca389dffed335cd006d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 424,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e38f0e0cbb9f0c47fcd418c2a6e5ed49e1ebb6d6466d39ac243b6557cd09823f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7eef78d-079f-5c94-a6ef-86b707b41d09",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b82bc334-0c28-51ea-3ac1-aaf2e85d2746",
  "kind": "theorem",
  "lexical_name": "cyclotomic_eq_prod_X_pow_sub_one_pow_moebius",
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
  "slug": "cyclotomic-eq-prod-x-pow-sub-one-pow-moebius--99e7e0573a1b86caf85d20f5",
  "source": {
    "blob": "5f853660d247b96b7f961ca389dffed335cd006d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 424,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variante38f0e0cbb9f0c47fcd418c2a6e5ed49e1ebb6d6466d39ac243b6557cd09823f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99e7e0573a1b86caf85d20f5decafa45938b00358c515eb33eee0be19b5539f7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variante38f0e0cbb9f0c47fcd418c2a6e5ed49e1ebb6d6466d39ac243b6557cd09823f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b82bc334-0c28-51ea-3ac1-aaf2e85d2746`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_eq_prod_X_pow_sub_one_pow_moebius {n : ℕ} (R : Type*) [CommRing R]
    [IsDomain R] : algebraMap _ (RatFunc R) (cyclotomic n R) =
      ∏ i ∈ n.divisorsAntidiagonal, algebraMap R[X] _ (X ^ i.snd - 1) ^ μ i.fst := by
  rcases n.eq_zero_or_pos with (rfl | hpos)
  · simp
  have h : ∀ n : ℕ, 0 < n → (∏ i ∈ Nat.divisors n, algebraMap _ (RatFunc R) (cyclotomic i R)) =
      algebraMap _ _ (X ^ n - 1 : R[X]) := by
    intro n hn
    rw [← prod_cyclotomic_eq_X_pow_sub_one hn R, map_prod]
  rw [(prod_eq_iff_prod_pow_moebius_eq_of_nonzero (fun n hn => _) fun n hn => _).1 h n hpos] <;>
    simp_rw [Ne, IsFractionRing.to_map_eq_zero_iff]
  · simp [cyclotomic_ne_zero]
  · intro n hn
    apply Monic.ne_zero
    apply monic_X_pow_sub_C _ (ne_of_gt hn)

end ArithmeticFunction

/-- We have
`cyclotomic n R = (X ^ k - 1) /ₘ (∏ i ∈ Nat.properDivisors k, cyclotomic i K)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variante38f0e0cbb9f0c47fcd418c2a6e5ed49e1ebb6d6466d39ac243b6557cd09823f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variante38f0e0cbb9f0c47fcd418c2a6e5ed49e1ebb6d6466d39ac243b6557cd09823f.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f853660d247b96b7f961ca389dffed335cd006d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
