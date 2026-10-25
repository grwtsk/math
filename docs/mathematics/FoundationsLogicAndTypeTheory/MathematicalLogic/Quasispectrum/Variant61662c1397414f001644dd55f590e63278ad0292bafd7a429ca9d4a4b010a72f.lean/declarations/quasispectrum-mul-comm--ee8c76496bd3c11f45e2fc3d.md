# quasispectrum.mul_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:493d5655-9da8-b9fa-877f-742d47145a40",
  "kind": "lemma",
  "lexical_name": "quasispectrum.mul_comm",
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
  "slug": "quasispectrum-mul-comm--ee8c76496bd3c11f45e2fc3d",
  "source": {
    "blob": "624ac7e8f17ee31626f9387fc9c2018f38c4c71b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 414,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variant61662c1397414f001644dd55f590e63278ad0292bafd7a429ca9d4a4b010a72f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee8c76496bd3c11f45e2fc3db71a44aca1e429c0ae65ad80521bf12b5130110e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variant61662c1397414f001644dd55f590e63278ad0292bafd7a429ca9d4a4b010a72f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:493d5655-9da8-b9fa-877f-742d47145a40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quasispectrum.mul_comm {R A : Type*} [CommRing R] [NonUnitalRing A] [Module R A]
    [IsScalarTower R A A] [SMulCommClass R A A] (a b : A) :
    quasispectrum R (a * b) = quasispectrum R (b * a) := by
  rw [← Set.inter_union_compl (quasispectrum R (a * b)) {r | IsUnit r},
    ← Set.inter_union_compl (quasispectrum R (b * a)) {r | IsUnit r}]
  congr! 1
  · simpa [Set.inter_comm _ {r | IsUnit r}, Unitization.quasispectrum_eq_spectrum_inr,
      Unitization.inr_mul] using spectrum.setOfPred_isUnit_inter_mul_comm _ _
  · rw [Set.inter_eq_right.mpr, Set.inter_eq_right.mpr]
    all_goals exact fun _ ↦ quasispectrum.not_isUnit_mem _

/-- A class for `𝕜`-algebras with a partial order where the ordering is compatible with the
(quasi)spectrum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variant61662c1397414f001644dd55f590e63278ad0292bafd7a429ca9d4a4b010a72f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variant61662c1397414f001644dd55f590e63278ad0292bafd7a429ca9d4a4b010a72f.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624ac7e8f17ee31626f9387fc9c2018f38c4c71b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
