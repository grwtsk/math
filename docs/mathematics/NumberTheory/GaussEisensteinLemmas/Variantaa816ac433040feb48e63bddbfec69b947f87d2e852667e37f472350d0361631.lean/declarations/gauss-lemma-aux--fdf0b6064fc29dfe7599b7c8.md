# gauss_lemma_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5955562-900c-147c-7b82-44bfb62182d2",
  "kind": "theorem",
  "lexical_name": "gauss_lemma_aux",
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
  "slug": "gauss-lemma-aux--fdf0b6064fc29dfe7599b7c8",
  "source": {
    "blob": "f4c6859663b5b9fb454c7f509fed5ad6dcf4c297",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 104,
    "path": "GRWTSK/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdf0b6064fc29dfe7599b7c84ebb78e8e9e0b481c5e01e599b09ab01179d2be7",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5955562-900c-147c-7b82-44bfb62182d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gauss_lemma_aux (p : ℕ) [hp : Fact p.Prime] {a : ℤ}
    (hap : (a : ZMod p) ≠ 0) : (↑a ^ (p / 2) : ZMod p) =
    (-1) ^ ((Ico 1 (p / 2).succ).filter fun x : ℕ => p / 2 < (a * x : ZMod p).val).card :=
  (mul_left_inj' (show ((p / 2)! : ZMod p) ≠ 0 by
    rw [Ne.def, CharP.cast_eq_zero_iff (ZMod p) p, hp.1.dvd_factorial, not_le]
    exact Nat.div_lt_self hp.1.pos (by decide))).1 <| by
      simpa using gauss_lemma_aux₁ p hap
#align zmod.gauss_lemma_aux ZMod.gauss_lemma_aux

/-- Gauss' lemma. The Legendre symbol can be computed by considering the number of naturals less
  than `p/2` such that `(a * x) % p > p / 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4c6859663b5b9fb454c7f509fed5ad6dcf4c297` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
