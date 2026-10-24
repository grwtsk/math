# eq_of_mem_fixedPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da9bc43a-277d-e596-3efe-bf3251195dc3",
  "kind": "theorem",
  "lexical_name": "eq_of_mem_fixedPoints",
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
  "slug": "eq-of-mem-fixedpoints--0dc3428ee5a0641e1150aca6",
  "source": {
    "blob": "1a99d2537806ac146f77e005bac58fef72f6d7c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 156,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dc3428ee5a0641e1150aca6c8115dd1a869cc4fdcadb059016cf5ba40599af9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da9bc43a-277d-e596-3efe-bf3251195dc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_mem_fixedPoints {t : zagierSet k} (mem : t ∈ fixedPoints (complexInvo k)) :
    t.val = (1, 1, k) := by
  obtain ⟨⟨x, y, z⟩, h⟩ := t
  obtain ⟨_, _, _⟩ := zagierSet_lower_bound k h
  rw [mem_fixedPoints_iff, complexInvo, Subtype.mk.injEq] at mem
  split_ifs at mem with less more <;>
    -- less (completely handled by the pre-applied `simp_all only`)
    simp_all only [not_lt, Prod.mk.injEq, add_eq_left, mul_eq_zero, false_or,
      lt_self_iff_false, reduceCtorEq]
  · -- more
    obtain ⟨_, _, _⟩ := mem; simp_all
  · -- middle (the one fixed point falls under this case)
    simp only [zagierSet, Set.mem_ofPred_eq] at h
    replace mem := mem.1
    rw [tsub_eq_iff_eq_add_of_le more, ← two_mul] at mem
    replace mem := (mul_left_cancel₀ two_ne_zero mem).symm
    subst mem
    rw [show x * x + 4 * x * z = x * (x + 4 * z) by linarith] at h
    rcases (Nat.dvd_prime hk.out).1 (dvd_of_mul_left_eq _ h) with e | e
    · rw [e, mul_one] at h
      simp_all [show z = 0 by linarith [e]]
    · simp only [e, mul_left_eq_self₀, add_eq_zero, and_false, or_false, reduceCtorEq] at h
      simp only [h, true_and]
      linarith [e]

/-- The singleton containing `(1, 1, k)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a99d2537806ac146f77e005bac58fef72f6d7c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
