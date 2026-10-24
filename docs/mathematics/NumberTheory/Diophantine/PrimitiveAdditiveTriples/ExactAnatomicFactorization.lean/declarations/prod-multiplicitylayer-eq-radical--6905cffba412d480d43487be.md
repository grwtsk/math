# prod_multiplicityLayer_eq_radical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b75082c6-4f03-de52-d9bb-62f2ce33b073",
  "kind": "theorem",
  "lexical_name": "prod_multiplicityLayer_eq_radical",
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
  "slug": "prod-multiplicitylayer-eq-radical--6905cffba412d480d43487be",
  "source": {
    "blob": "7435811adf3ef6d8cc94c8ca0a6b6f48844437a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 127,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6905cffba412d480d43487be3887ad15f43ecd402569830b048fc242426b322d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b75082c6-4f03-de52-d9bb-62f2ce33b073`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_multiplicityLayer_eq_radical {n : ℕ} (hn : 0 < n) :
    ∏ j ∈ Finset.Icc 1 n, multiplicityLayer n j = radical n := by
  conv_rhs =>
    rw [← prod_multiplicityLayer_pow_eq_self hn]
  rw [radical_prod]
  · apply Finset.prod_congr rfl
    intro i hi
    have hi0 : i ≠ 0 := by
      exact Nat.ne_of_gt (Finset.mem_Icc.mp hi).1
    rw [radical_pow _ hi0]
    have h := radical_associated
      (multiplicityLayer_squarefree n i).isRadical
      (multiplicityLayer_pos n i).ne'
    exact associated_iff_eq.mp h.symm
  · intro i _ j _ hij
    apply Nat.coprime_iff_isRelPrime.mp
    apply Nat.Coprime.pow_right
    apply Nat.Coprime.pow_left
    exact multiplicityLayer_coprime n i j hij

/-- A reusable package for the exact prime-multiplicity anatomy of a positive
integer. The later epsilon-dependent compression in Lemma 2.2 is deliberately
kept out of this exact record. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7435811adf3ef6d8cc94c8ca0a6b6f48844437a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
