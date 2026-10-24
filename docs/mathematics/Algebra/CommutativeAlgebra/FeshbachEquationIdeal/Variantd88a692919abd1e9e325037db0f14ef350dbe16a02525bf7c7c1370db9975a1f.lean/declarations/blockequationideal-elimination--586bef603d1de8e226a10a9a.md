# blockEquationIdeal_elimination

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ffa1a92-d94b-0e61-19a2-ad8bd8a7f5a3",
  "kind": "theorem",
  "lexical_name": "blockEquationIdeal_elimination",
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
  "slug": "blockequationideal-elimination--586bef603d1de8e226a10a9a",
  "source": {
    "blob": "8da69080fedd6d000ebc4f809dccd682d71819c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 54,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:586bef603d1de8e226a10a9a0d8a345e6a3a0283477a5a7a767afff108a44af3",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ffa1a92-d94b-0e61-19a2-ad8bd8a7f5a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockEquationIdeal_elimination [DecidableEq κ]
    (U : Matrix ι κ R) (B : Matrix κ κ R) [Invertible B]
    (p : ι → R) (q : κ → R) :
    blockEquationIdeal (p + U.mulVec q) (B.mulVec q) =
      blockEquationIdeal p q := by
  apply le_antisymm
  · apply Ideal.span_le.mpr
    rintro _ ⟨i | j, rfl⟩
    · exact (blockEquationIdeal p q).add_mem
        (mem_blockEquationIdeal_left p q i)
        (mulVec_mem_ideal _ U q (mem_blockEquationIdeal_right p q) i)
    · exact mulVec_mem_ideal _ B q (mem_blockEquationIdeal_right p q) j
  · apply Ideal.span_le.mpr
    have hq : ∀ j, q j ∈ blockEquationIdeal (p + U.mulVec q) (B.mulVec q) := by
      intro j
      have h := mulVec_mem_ideal
        (blockEquationIdeal (p + U.mulVec q) (B.mulVec q)) (⅟ B) (B.mulVec q)
        (mem_blockEquationIdeal_right (p + U.mulVec q) (B.mulVec q)) j
      simpa only [Matrix.mulVec_mulVec, invOf_mul_self, Matrix.one_mulVec] using h
    rintro _ ⟨i | j, rfl⟩
    · change p i ∈ blockEquationIdeal (p + U.mulVec q) (B.mulVec q)
      have h := (blockEquationIdeal (p + U.mulVec q) (B.mulVec q)).sub_mem
        (mem_blockEquationIdeal_left (p + U.mulVec q) (B.mulVec q) i)
        (mulVec_mem_ideal _ U q hq i)
      simpa only [Pi.add_apply, add_sub_cancel_right] using h
    · exact hq j

omit [Fintype κ] in
/-- The order in which the two equation blocks are listed does not affect the
generated ideal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8da69080fedd6d000ebc4f809dccd682d71819c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
