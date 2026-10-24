# eq_zero_iff_not_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d385990-e2b2-1092-e6f1-46ccd3eb159f",
  "kind": "theorem",
  "lexical_name": "eq_zero_iff_not_coprime",
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
  "slug": "eq-zero-iff-not-coprime--2e8604b754dbe68c899e84e2",
  "source": {
    "blob": "f1f830ec89cc5982a95f8e9f5ab1cf994e621908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 169,
    "path": "GRWTSK/NumberTheory/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e8604b754dbe68c899e84e2208c0272f32cd7c05f7a81bfa104195f5d5b3d94",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d385990-e2b2-1092-e6f1-46ccd3eb159f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_iff_not_coprime {a : ℤ} {b : ℕ} [NeZero b] : J(a | b) = 0 ↔ a.gcd b ≠ 1 :=
  List.prod_eq_zero_iff.trans
    (by
      rw [List.mem_pmap, Int.gcd_eq_natAbs, Ne, Prime.not_coprime_iff_dvd]
      -- porting note: Initially, `and_assoc'` and `and_comm'` were used on line 164 but they have
      -- been deprecated so we replace them with `and_assoc` and `and_comm`
      simp_rw [legendreSym.eq_zero_iff _ _, int_cast_zmod_eq_zero_iff_dvd,
        mem_factors (NeZero.ne b), ← Int.coe_nat_dvd_left, Int.coe_nat_dvd, exists_prop, and_assoc,
        and_comm])
#align jacobi_sym.eq_zero_iff_not_coprime jacobiSym.eq_zero_iff_not_coprime

/-- The symbol `J(a | b)` is nonzero when `a` and `b` are coprime. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1f830ec89cc5982a95f8e9f5ab1cf994e621908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
