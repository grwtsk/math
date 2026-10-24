# Set.Nonempty.ordConnected_iff_of_bdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b80c88e-0472-216b-88bf-3196d69c841e",
  "kind": "lemma",
  "lexical_name": "Set.Nonempty.ordConnected_iff_of_bdd",
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
  "slug": "set-nonempty-ordconnected-iff-of-bdd--a1c65d96412e2c26c2c986ee",
  "source": {
    "blob": "411016587ecb060683da6a2f654d8fb81f1a5e75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variantad8a641420e2197412ed42d1fa0937dcee63d5e2d010a36342939c8008d838c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1c65d96412e2c26c2c986ee8dcbded16ce62995d92ca7253f47dde5d4b2c27e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variantad8a641420e2197412ed42d1fa0937dcee63d5e2d010a36342939c8008d838c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b80c88e-0472-216b-88bf-3196d69c841e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Set.Nonempty.ordConnected_iff_of_bdd
    [ConditionallyCompleteLinearOrder α] [LocallyFiniteOrder α]
    (h₀ : I.Nonempty) (h₁ : BddBelow I) (h₂ : BddAbove I) :
    I.OrdConnected ↔ I = Icc (sInf I) (sSup I) :=
  have h₄ : I.Finite := h₁.finite_of_bddAbove h₂
  ⟨fun _ ↦ le_antisymm (subset_Icc_csInf_csSup h₁ h₂)
    (I.Icc_subset (h₀.csInf_mem h₄) (h₀.csSup_mem h₄)), fun h₃ ↦ h₃ ▸ ordConnected_Icc⟩

/-- A version of `Set.Nonempty.ordConnected_iff_of_bdd` for complete linear orders, such as `Fin n`,
in which the explicit boundedness hypotheses are not necessary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variantad8a641420e2197412ed42d1fa0937dcee63d5e2d010a36342939c8008d838c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variantad8a641420e2197412ed42d1fa0937dcee63d5e2d010a36342939c8008d838c1.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `411016587ecb060683da6a2f654d8fb81f1a5e75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
