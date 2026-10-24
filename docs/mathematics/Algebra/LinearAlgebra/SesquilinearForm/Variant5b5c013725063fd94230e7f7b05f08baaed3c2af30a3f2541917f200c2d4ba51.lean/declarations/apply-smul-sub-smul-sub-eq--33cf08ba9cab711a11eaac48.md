# apply_smul_sub_smul_sub_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbc5fe1b-5d6c-b411-84df-f592d4088228",
  "kind": "lemma",
  "lexical_name": "apply_smul_sub_smul_sub_eq",
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
  "slug": "apply-smul-sub-smul-sub-eq--33cf08ba9cab711a11eaac48",
  "source": {
    "blob": "f375bbc35d14c25e01650cd8ddfab95f811d94b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 857,
    "line": 846,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant5b5c013725063fd94230e7f7b05f08baaed3c2af30a3f2541917f200c2d4ba51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33cf08ba9cab711a11eaac48918e3480c5470392b1765ac272b71a05c0a5ab1b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SesquilinearForm/Variant5b5c013725063fd94230e7f7b05f08baaed3c2af30a3f2541917f200c2d4ba51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbc5fe1b-5d6c-b411-84df-f592d4088228`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 846–857.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_smul_sub_smul_sub_eq [CommRing R] [AddCommGroup M] [Module R M]
    (B : LinearMap.BilinForm R M) (x y : M) :
    B ((B x y) • x - (B x x) • y) ((B x y) • x - (B x x) • y) =
      (B x x) * ((B x x) * (B y y) - (B x y) * (B y x)) := by
  simp only [map_sub, map_smul, sub_apply, smul_apply, smul_eq_mul, mul_sub,
    mul_comm (B x y) (B x x), mul_left_comm (B x y) (B x x)]
  abel

variable [CommRing R] [LinearOrder R] [IsStrictOrderedRing R]
  [AddCommGroup M] [Module R M] (B : LinearMap.BilinForm R M)

/-- The **Cauchy-Schwarz inequality** for positive semidefinite forms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Variant5b5c013725063fd94230e7f7b05f08baaed3c2af30a3f2541917f200c2d4ba51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant5b5c013725063fd94230e7f7b05f08baaed3c2af30a3f2541917f200c2d4ba51.lean#L846).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f375bbc35d14c25e01650cd8ddfab95f811d94b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
