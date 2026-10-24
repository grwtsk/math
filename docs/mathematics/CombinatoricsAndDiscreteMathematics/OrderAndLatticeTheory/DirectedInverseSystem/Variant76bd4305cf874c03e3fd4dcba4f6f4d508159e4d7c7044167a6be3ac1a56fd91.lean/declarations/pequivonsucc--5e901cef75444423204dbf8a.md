# pEquivOnSucc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd2aaae7f4e3bd0d21323fc0f4493bcdf31c99078d291b2953ba907f025e03f9",
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
  "slug": "pequivonsucc--5e901cef75444423204dbf8a",
  "source": {
    "blob": "eba8367ed1ab4a5b7deccc7a2a4f67bb29ced57e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 449,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant76bd4305cf874c03e3fd4dcba4f6f4d508159e4d7c7044167a6be3ac1a56fd91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e901cef75444423204dbf8aa9283fc57e80e67cdbe4d86a735141502cfee556",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant76bd4305cf874c03e3fd4dcba4f6f4d508159e4d7c7044167a6be3ac1a56fd91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd2aaae7f4e3bd0d21323fc0f4493bcdf31c99078d291b2953ba907f025e03f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–462.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant76bd4305cf874c03e3fd4dcba4f6f4d508159e4d7c7044167a6be3ac1a56fd91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant76bd4305cf874c03e3fd4dcba4f6f4d508159e4d7c7044167a6be3ac1a56fd91.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eba8367ed1ab4a5b7deccc7a2a4f67bb29ced57e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
