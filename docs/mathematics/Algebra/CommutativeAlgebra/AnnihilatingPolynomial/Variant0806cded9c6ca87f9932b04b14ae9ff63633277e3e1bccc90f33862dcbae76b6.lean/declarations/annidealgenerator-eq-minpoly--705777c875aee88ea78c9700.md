# annIdealGenerator_eq_minpoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b4bc4ef-2751-4ff2-d552-bc8e72408784",
  "kind": "theorem",
  "lexical_name": "annIdealGenerator_eq_minpoly",
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
  "slug": "annidealgenerator-eq-minpoly--705777c875aee88ea78c9700",
  "source": {
    "blob": "f61e25647944110d79d1cb7b78c0d0e9f65131d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 165,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:705777c875aee88ea78c970034829a0b18f34ab5c4f86ce95a600c2c1fef31e2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b4bc4ef-2751-4ff2-d552-bc8e72408784`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem annIdealGenerator_eq_minpoly (a : A) : annIdealGenerator 𝕜 a = minpoly 𝕜 a := by
  by_cases h : annIdealGenerator 𝕜 a = 0
  · rw [h, minpoly.eq_zero]
    rintro ⟨p, p_monic, hp : aeval a p = 0⟩
    refine' p_monic.ne_zero (Ideal.mem_bot.mp _)
    simpa only [annIdealGenerator_eq_zero_iff.mp h] using mem_annIdeal_iff_aeval_eq_zero.mpr hp
  · exact minpoly.unique _ _ (monic_annIdealGenerator _ _ h) (annIdealGenerator_aeval_eq_zero _ _)
      fun q q_monic hq =>
        degree_annIdealGenerator_le_of_mem a q (mem_annIdeal_iff_aeval_eq_zero.mpr hq)
          q_monic.ne_zero
#align polynomial.ann_ideal_generator_eq_minpoly Polynomial.annIdealGenerator_eq_minpoly

/-- If a monic generates the annihilating ideal, it must match our choice
 of the annihilating ideal generator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f61e25647944110d79d1cb7b78c0d0e9f65131d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
