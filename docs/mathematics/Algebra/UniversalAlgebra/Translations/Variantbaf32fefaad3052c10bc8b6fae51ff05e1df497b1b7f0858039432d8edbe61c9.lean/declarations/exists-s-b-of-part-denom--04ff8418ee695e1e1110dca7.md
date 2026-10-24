# exists_s_b_of_part_denom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac105753-8527-9042-0630-da7347fbe269",
  "kind": "theorem",
  "lexical_name": "exists_s_b_of_part_denom",
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
  "slug": "exists-s-b-of-part-denom--04ff8418ee695e1e1110dca7",
  "source": {
    "blob": "3a364c47a8355e15ed727db6a674b55ddc899cb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 77,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Translations/Variantbaf32fefaad3052c10bc8b6fae51ff05e1df497b1b7f0858039432d8edbe61c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04ff8418ee695e1e1110dca7e82d531ad96e54532b60c6cb7c568deb533f076a",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Translations/Variantbaf32fefaad3052c10bc8b6fae51ff05e1df497b1b7f0858039432d8edbe61c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac105753-8527-9042-0630-da7347fbe269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_s_b_of_part_denom {b : α}
    (nth_part_denom_eq : g.partialDenominators.get? n = some b) :
    ∃ gp, g.s.get? n = some gp ∧ gp.b = b := by
  simpa [partialDenominators, Stream'.Seq.map_get?] using nth_part_denom_eq
#align generalized_continued_fraction.exists_s_b_of_part_denom GeneralizedContinuedFraction.exists_s_b_of_part_denom

end General

section WithDivisionRing

/-!
### Translations Between Computational Functions

Here we  give some basic translations that hold by definition for the computational methods of a
continued fraction.
-/


variable {K : Type*} {g : GeneralizedContinuedFraction K} {n : ℕ} [DivisionRing K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Translations/Variantbaf32fefaad3052c10bc8b6fae51ff05e1df497b1b7f0858039432d8edbe61c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Translations/Variantbaf32fefaad3052c10bc8b6fae51ff05e1df497b1b7f0858039432d8edbe61c9.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a364c47a8355e15ed727db6a674b55ddc899cb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
