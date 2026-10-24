# nStarCount_le_explicit_admissible_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6a2507f-1bb1-cba6-479c-793af27c3e90",
  "kind": "theorem",
  "lexical_name": "nStarCount_le_explicit_admissible_bound",
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
  "slug": "nstarcount-le-explicit-admissible-bound--30e1bbb1c9f5bbeb40f686d5",
  "source": {
    "blob": "b03bc40563f4fbc0d88dfabc9a0d7d09411e881a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 437,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30e1bbb1c9f5bbeb40f686d57177c16906775bfd296733d53de026cd64d11da2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6a2507f-1bb1-cba6-479c-793af27c3e90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nStarCount_le_explicit_admissible_bound
    {lam ε : ℝ} (hlam : 0 ≤ lam) (hε_pos : 0 < ε) (hε : ε < 1 / 2)
    {d : ℕ} (hd : d = ⌊5 / 2 * ε⁻¹ ^ 2⌋₊)
    (X : ℕ) :
    nStarCount lam X ≤
      ((Nat.log 2 X + 1) ^ (3 * d) * (residualCap ε X) ^ 3) *
        (admissibleParameters d lam ε X).sup boxCard := by
  calc
    nStarCount lam X ≤
        (admissibleParameters d lam ε X).card *
          (admissibleParameters d lam ε X).sup boxCard :=
      nStarCount_le_admissible_parameter_mul_sup hlam hε_pos hε hd X
    _ ≤ ((Nat.log 2 X + 1) ^ (3 * d) * (residualCap ε X) ^ 3) *
          (admissibleParameters d lam ε X).sup boxCard := by
      gcongr
      exact card_admissibleParameters_le d lam ε X

end AdmissibleAnatomicReduction

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b03bc40563f4fbc0d88dfabc9a0d7d09411e881a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
