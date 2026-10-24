# exists_pow_nat_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0ed74f4-7d62-74f9-cc3e-0dd1e1e0f43b",
  "kind": "theorem",
  "lexical_name": "exists_pow_nat_eq",
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
  "slug": "exists-pow-nat-eq--c0ef6f1264b44072f6a7d482",
  "source": {
    "blob": "35e7e03f01e93daa0ecc58715a538d486c61995d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 97,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0ef6f1264b44072f6a7d4822bc30dca89eb4924fa27da3b21d8310358c2cea0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0ed74f4-7d62-74f9-cc3e-0dd1e1e0f43b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pow_nat_eq [IsSepClosed k] (x : k) (n : ℕ) [hn : NeZero (n : k)] :
    ∃ z, z ^ n = x := by
  have hn' : 0 < n := Nat.pos_of_ne_zero <| fun h => by
    rw [h, Nat.cast_zero] at hn
    exact hn.out rfl
  have : degree (X ^ n - C x) ≠ 0 := by
    rw [degree_X_pow_sub_C hn' x]
    exact (WithBot.coe_lt_coe.2 hn').ne'
  by_cases hx : x = 0
  · exact ⟨0, by rw [hx, pow_eq_zero_iff hn']⟩
  · obtain ⟨z, hz⟩ := exists_root _ this <| separable_X_pow_sub_C x hn.out hx
    use z
    simpa [eval_C, eval_X, eval_pow, eval_sub, IsRoot.def, sub_eq_zero] using hz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35e7e03f01e93daa0ecc58715a538d486c61995d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
