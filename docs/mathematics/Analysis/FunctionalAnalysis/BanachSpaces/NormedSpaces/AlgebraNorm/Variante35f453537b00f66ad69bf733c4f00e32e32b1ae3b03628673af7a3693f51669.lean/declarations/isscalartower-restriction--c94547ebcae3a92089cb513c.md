# isScalarTower_restriction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6d500752695676a9d8625c37bc4479341ee740bff9f85ef7ecb2bdc8280faae",
  "kind": "def",
  "lexical_name": "isScalarTower_restriction",
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
  "slug": "isscalartower-restriction--c94547ebcae3a92089cb513c",
  "source": {
    "blob": "5c56faabb3acd1562371f8778e0094bbe06bca73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 111,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AlgebraNorm/Variante35f453537b00f66ad69bf733c4f00e32e32b1ae3b03628673af7a3693f51669.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c94547ebcae3a92089cb513c313dfaaaea8659c7470c4b2a9872a104012632e2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AlgebraNorm/Variante35f453537b00f66ad69bf733c4f00e32e32b1ae3b03628673af7a3693f51669.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6d500752695676a9d8625c37bc4479341ee740bff9f85ef7ecb2bdc8280faae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isScalarTower_restriction {A : Type*} [CommRing A] [Algebra R A] [Algebra A S]
    [IsScalarTower R A S] (hinj : Function.Injective (algebraMap A S)) (f : AlgebraNorm R S) :
    AlgebraNorm R A where
  toFun x     := f (algebraMap A S x)
  map_zero'   := by simp only [map_zero]
  add_le' x y := by simp only [map_add, map_add_le_add]
  neg' x      := by simp only [map_neg, map_neg_eq_map]
  mul_le' x y := by simp only [map_mul, map_mul_le_mul]
  eq_zero_of_map_eq_zero' x hx := by
    rw [← map_eq_zero_iff (algebraMap A S) hinj]
    exact eq_zero_of_map_eq_zero f hx
  smul' r x := by
    simp only [Algebra.smul_def, map_mul, ← IsScalarTower.algebraMap_apply]
    simp only [← smul_eq_mul, algebraMap_smul, map_smul_eq_mul]

end AlgebraNorm

/-- A multiplicative algebra norm on an `R`-algebra norm `S` is a multiplicative ring norm on `S`
  compatible with the action of `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AlgebraNorm/Variante35f453537b00f66ad69bf733c4f00e32e32b1ae3b03628673af7a3693f51669.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AlgebraNorm/Variante35f453537b00f66ad69bf733c4f00e32e32b1ae3b03628673af7a3693f51669.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c56faabb3acd1562371f8778e0094bbe06bca73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
