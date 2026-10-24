# modByMonic_eq_zero_iff_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e15cd3fb523371c524168aed531903cafdbbce8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 384,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f64f25f34b03166e7900a694563cb685f81ac7c8846185ae5f77767bd137bf44.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f0aafde-413a-e45d-fe1c-5dea510d30ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8dd10ced-6046-4a70-f74b-ee6aad884df6",
  "kind": "theorem",
  "lexical_name": "modByMonic_eq_zero_iff_dvd",
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
  "slug": "modbymonic-eq-zero-iff-dvd--6ba8f7ad8d5e05dbe1cbe279",
  "source": {
    "blob": "8e15cd3fb523371c524168aed531903cafdbbce8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 384,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Div/Variantf64f25f34b03166e7900a694563cb685f81ac7c8846185ae5f77767bd137bf44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ba8f7ad8d5e05dbe1cbe279ebce2c0a1c125b6f7ab387ecffd47ac758557b10",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Div/Variantf64f25f34b03166e7900a694563cb685f81ac7c8846185ae5f77767bd137bf44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8dd10ced-6046-4a70-f74b-ee6aad884df6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem modByMonic_eq_zero_iff_dvd (hq : Monic q) : p %ₘ q = 0 ↔ q ∣ p :=
  ⟨fun h => by rw [← modByMonic_add_div p hq, h, zero_add]; exact dvd_mul_right _ _, fun h => by
    nontriviality R
    obtain ⟨r, hr⟩ := exists_eq_mul_right_of_dvd h
    by_contra hpq0
    have hmod : p %ₘ q = q * (r - p /ₘ q) := by rw [modByMonic_eq_sub_mul_div _ hq, mul_sub, ← hr]
    have : degree (q * (r - p /ₘ q)) < degree q := hmod ▸ degree_modByMonic_lt _ hq
    have hrpq0 : leadingCoeff (r - p /ₘ q) ≠ 0 := fun h =>
      hpq0 <|
        leadingCoeff_eq_zero.1
          (by rw [hmod, leadingCoeff_eq_zero.1 h, mul_zero, leadingCoeff_zero])
    have hlc : leadingCoeff q * leadingCoeff (r - p /ₘ q) ≠ 0 := by rwa [Monic.def.1 hq, one_mul]
    rw [degree_mul' hlc, degree_eq_natDegree hq.ne_zero,
      degree_eq_natDegree (mt leadingCoeff_eq_zero.2 hrpq0)] at this
    exact not_lt_of_ge (Nat.le_add_right _ _) (WithBot.coe_lt_coe.1 this)⟩


/-- See `Polynomial.mul_self_modByMonic` for the other multiplication order. That version, unlike
this one, requires commutativity. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Div/Variantf64f25f34b03166e7900a694563cb685f81ac7c8846185ae5f77767bd137bf44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Div/Variantf64f25f34b03166e7900a694563cb685f81ac7c8846185ae5f77767bd137bf44.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e15cd3fb523371c524168aed531903cafdbbce8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
