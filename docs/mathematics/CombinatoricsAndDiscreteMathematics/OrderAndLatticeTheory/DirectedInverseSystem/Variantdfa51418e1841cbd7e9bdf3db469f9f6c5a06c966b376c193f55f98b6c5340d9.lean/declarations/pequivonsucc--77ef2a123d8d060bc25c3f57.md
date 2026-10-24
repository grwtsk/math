# pEquivOnSucc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44a2c5cbc56b84136f405325e74e6b4519398d867fd3213cae8da4b6ad31ff3c",
  "kind": "def",
  "lexical_name": "pEquivOnSucc",
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
  "slug": "pequivonsucc--77ef2a123d8d060bc25c3f57",
  "source": {
    "blob": "9efaa124b4e64f79d7514744b0544f1a26ef3ad6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 453,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variantdfa51418e1841cbd7e9bdf3db469f9f6c5a06c966b376c193f55f98b6c5340d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77ef2a123d8d060bc25c3f5773a91e29ddc2da12e6dbcbf7f35a30d578811f73",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variantdfa51418e1841cbd7e9bdf3db469f9f6c5a06c966b376c193f55f98b6c5340d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44a2c5cbc56b84136f405325e74e6b4519398d867fd3213cae8da4b6ad31ff3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pEquivOnSucc [InverseSystem f] (hi : ¬IsMax i) (e : PEquivOn f equivSucc (Iic i))
    (H : ∀ ⦃i⦄ (hi : ¬ IsMax i) x, (equivSucc hi x).1 = f (le_succ i) x) :
    PEquivOn f equivSucc (Iic i⁺) where
  equiv := piEquivSucc e.equiv (equivSucc hi) hi
  nat := isNatEquiv_piEquivSucc hi (H hi) e.nat
  compat hsj hj x := by
    obtain eq | lt := hsj.eq_or_lt
    · cases (succ_eq_succ_iff_of_not_isMax hj hi).mp eq; simp [piEquivSucc]
    · rwa [piEquivSucc, piSplitLE_lt, e.compat]

variable (hi : IsSuccPrelimit i) (e : ∀ j : Iio i, PEquivOn f equivSucc (Iic j))

/-- Glue partial families of bijections at a limit ordinal,
obtaining a partial family over a right-open interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variantdfa51418e1841cbd7e9bdf3db469f9f6c5a06c966b376c193f55f98b6c5340d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variantdfa51418e1841cbd7e9bdf3db469f9f6c5a06c966b376c193f55f98b6c5340d9.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9efaa124b4e64f79d7514744b0544f1a26ef3ad6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
