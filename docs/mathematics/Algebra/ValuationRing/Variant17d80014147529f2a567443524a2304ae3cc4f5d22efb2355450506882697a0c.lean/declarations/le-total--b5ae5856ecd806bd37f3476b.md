# le_total

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afaba3e3-0d0a-4129-d4c2-c8b11089a1aa",
  "kind": "theorem",
  "lexical_name": "le_total",
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
  "slug": "le-total--b5ae5856ecd806bd37f3476b",
  "source": {
    "blob": "5dfd71807fba011dee570b5bd6d349688385ece5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 116,
    "path": "GRWTSK/Algebra/ValuationRing/Variant17d80014147529f2a567443524a2304ae3cc4f5d22efb2355450506882697a0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5ae5856ecd806bd37f3476bbeba556dfd994a0e32dc5185dd026d2ec18ac744",
  "verification": {
    "reference": "docs/verification/Algebra/ValuationRing/Variant17d80014147529f2a567443524a2304ae3cc4f5d22efb2355450506882697a0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afaba3e3-0d0a-4129-d4c2-c8b11089a1aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem le_total (a b : ValueGroup A K) : a ≤ b ∨ b ≤ a := by
  rcases a with ⟨a⟩; rcases b with ⟨b⟩
  obtain ⟨xa, ya, hya, rfl⟩ : ∃ a b : A, _ := IsFractionRing.div_surjective a
  obtain ⟨xb, yb, hyb, rfl⟩ : ∃ a b : A, _ := IsFractionRing.div_surjective b
  have : (algebraMap A K) ya ≠ 0 := IsFractionRing.to_map_ne_zero_of_mem_nonZeroDivisors hya
  have : (algebraMap A K) yb ≠ 0 := IsFractionRing.to_map_ne_zero_of_mem_nonZeroDivisors hyb
  obtain ⟨c, h | h⟩ := ValuationRing.cond (xa * yb) (xb * ya)
  · right
    use c
    rw [Algebra.smul_def]
    field_simp
    simp only [← RingHom.map_mul, ← h]; congr 1; ring
  · left
    use c
    rw [Algebra.smul_def]
    field_simp
    simp only [← RingHom.map_mul, ← h]; congr 1; ring
#align valuation_ring.le_total ValuationRing.le_total

-- Porting note: it is much faster to split the instance `LinearOrderedCommGroupWithZero`
-- into two parts
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ValuationRing/Variant17d80014147529f2a567443524a2304ae3cc4f5d22efb2355450506882697a0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ValuationRing/Variant17d80014147529f2a567443524a2304ae3cc4f5d22efb2355450506882697a0c.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dfd71807fba011dee570b5bd6d349688385ece5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
