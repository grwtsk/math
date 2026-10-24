# Pocklington3Cert.of_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9759e277-9376-27c9-316d-003499cd0d37",
  "kind": "theorem",
  "lexical_name": "Pocklington3Cert.of_prime",
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
  "slug": "pocklington3cert-of-prime--35724a4294e73f6cdf76c03a",
  "source": {
    "blob": "dce484fbbb37759807ecf0c2069e303a8848841d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 198,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35724a4294e73f6cdf76c03a8830f90de8fff5d0003aca6e50ca0d9b5b999da2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9759e277-9376-27c9-316d-003499cd0d37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pocklington3Cert.of_prime (r s p : Nat) (hp : Nat.Prime p) (h2p : 2 < p)
    (cond : powMod (r ^ 2 - 8 * s) (p / 2) p = p - 1) :
    Pocklington3Cert r s := by
  refine .inr <| .inl fun h ↦ ?_
  have p_odd : p % 2 = 1 := by rw [← Nat.not_even_iff, Nat.Prime.even_iff hp]; lia
  obtain ⟨a, ha⟩ := h
  rw [ha, powMod, ← sq, ← pow_mul, Nat.two_mul_odd_div_two p_odd] at cond
  replace cond := congr(($cond : ZMod p))
  have := Fact.mk hp
  rw [ZMod.natCast_mod, Nat.cast_pow, Nat.cast_sub hp.one_le, ZMod.natCast_self, zero_sub,
    Nat.cast_one] at cond
  have ha : (a : ZMod p) ≠ 0 := by
    rintro ha; rw [ha, zero_pow (by lia), eq_comm, neg_eq_zero] at cond; grind
  rw [ZMod.pow_card_sub_one_eq_one ha, eq_neg_iff_add_eq_zero, one_add_one_eq_two, ← Nat.cast_two,
    ZMod.natCast_eq_zero_iff] at cond
  exact not_lt_of_ge (Nat.le_of_dvd (by lia) cond) h2p

/-- How to discharge the `Pocklington3Cert` obligation:
- `zero`: `s = 0`
- `prime p hp`: witness that `r² - 8s` is a quadratic non-residue mod `p`
- `lt`: `r² < 8s` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dce484fbbb37759807ecf0c2069e303a8848841d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
