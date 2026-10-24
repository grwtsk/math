# neZero'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3b2b41c-10f0-8741-8cd3-c1323426baa9",
  "kind": "theorem",
  "lexical_name": "neZero'",
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
  "slug": "nezero--5414e94cfe470b43ce1ed22c",
  "source": {
    "blob": "16f0e4840a5bd997c0264c5ad2940ff923ee6a9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 642,
    "line": 621,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant507a55fa0af44c5ef5eeb57a8cead19605a65243c4a08d6760f07fec18e3a441.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5414e94cfe470b43ce1ed22c5305852cfef903b27ebc9923f2f42ef49c003db8",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant507a55fa0af44c5ef5eeb57a8cead19605a65243c4a08d6760f07fec18e3a441.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3b2b41c-10f0-8741-8cd3-c1323426baa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–642.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neZero' {n : ℕ+} (hζ : IsPrimitiveRoot ζ n) : NeZero ((n : ℕ) : R) := by
  let p := ringChar R
  have hfin := multiplicity.finite_nat_iff.2 ⟨CharP.char_ne_one R p, n.pos⟩
  obtain ⟨m, hm⟩ := multiplicity.exists_eq_pow_mul_and_not_dvd hfin
  by_cases hp : p ∣ n
  · obtain ⟨k, hk⟩ := Nat.exists_eq_succ_of_ne_zero (multiplicity.pos_of_dvd hfin hp).ne'
    haveI : NeZero p := NeZero.of_pos (Nat.pos_of_dvd_of_pos hp n.pos)
    haveI hpri : Fact p.Prime := CharP.char_is_prime_of_pos R p
    have := hζ.pow_eq_one
    rw [hm.1, hk, pow_succ, mul_assoc, pow_mul', ← frobenius_def, ← frobenius_one p] at this
    exfalso
    have hpos : 0 < p ^ k * m := by
      refine' mul_pos (pow_pos hpri.1.pos _) (Nat.pos_of_ne_zero fun h => _)
      have H := hm.1
      rw [h] at H
      simp at H
    refine' hζ.pow_ne_one_of_pos_of_lt hpos _ (frobenius_inj R p this)
    · rw [hm.1, hk, pow_succ, mul_assoc, mul_comm p]
      exact lt_mul_of_one_lt_right hpos hpri.1.one_lt
  · exact NeZero.of_not_dvd R hp
#align is_primitive_root.ne_zero' IsPrimitiveRoot.neZero'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant507a55fa0af44c5ef5eeb57a8cead19605a65243c4a08d6760f07fec18e3a441.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant507a55fa0af44c5ef5eeb57a8cead19605a65243c4a08d6760f07fec18e3a441.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16f0e4840a5bd997c0264c5ad2940ff923ee6a9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
