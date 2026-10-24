# basisProd_natAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b193c59-c106-898b-800f-dcaf0a3701b4",
  "kind": "lemma",
  "lexical_name": "basisProd_natAdd",
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
  "slug": "basisprod-natadd--e201c6cb912920ad579fd75d",
  "source": {
    "blob": "8715ce3b0e0d6807062d40b3ee0c18a4a751f15d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 77,
    "path": "GRWTSK/Algebra/LinearAlgebra/DegreeLT/Variant280b9271880082fb771af3935b841996aacca2cfdad6abbac6c35e68295038b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e201c6cb912920ad579fd75dc8816038c60655f4b8579d638cb5f148165f3a3a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DegreeLT/Variant280b9271880082fb771af3935b841996aacca2cfdad6abbac6c35e68295038b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b193c59-c106-898b-800f-dcaf0a3701b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma basisProd_natAdd (m n : ℕ) (i : Fin n) :
    basisProd R m n (i.natAdd m) = (0, basis R n i) := by
  rw [basisProd, Basis.reindex_apply, finSumFinEquiv_symm_apply_natAdd, Basis.prod_apply,
    Sum.elim_inr, LinearMap.coe_inr, Function.comp_apply]

variable (R m n) in
/-- An isomorphism between `R[X]_(m + n)` and `R[X]_m × R[X]_n` given by the fact that the bases are
both indexed by `Fin (m + n)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DegreeLT/Variant280b9271880082fb771af3935b841996aacca2cfdad6abbac6c35e68295038b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DegreeLT/Variant280b9271880082fb771af3935b841996aacca2cfdad6abbac6c35e68295038b3.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8715ce3b0e0d6807062d40b3ee0c18a4a751f15d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
