# invTransformₗ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98e08a5616e70332d37c4492a586ccf5de4cb7fd30d63e578d4889f613171daf",
  "kind": "def",
  "lexical_name": "invTransformₗ",
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
  "slug": "invtransform--92d1865a060bebb2258fabe2",
  "source": {
    "blob": "3be085b70a1f356a9abe33d20cabdae0ad3d94c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 113,
    "path": "GRWTSK/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92d1865a060bebb2258fabe2526e59def87695446a94e4f84e39c9ab33672293",
  "verification": {
    "reference": "docs/verification/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98e08a5616e70332d37c4492a586ccf5de4cb7fd30d63e578d4889f613171daf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def invTransformₗ (F : ℤ_[p]⟦X⟧) : C(ℤ_[p], ℤ_[p]) →ₗ[ℤ_[p]] ℤ_[p] where
  toFun f := ∑' i, PadicInt.mahlerEquiv ℤ_[p] f i * F.coeff i
  map_add' f g := by
    simp only [map_add, ZeroAtInftyContinuousMap.coe_add, Pi.add_apply, add_mul]
    rw [Summable.tsum_add] <;> apply invTransformSummable
  map_smul' r f := by
    simp only [map_smul, ZeroAtInftyContinuousMap.coe_smul, Pi.smul_apply, smul_eq_mul, mul_assoc,
      RingHom.id_apply]
    simp_rw [← smul_eq_mul]
    rw [Summable.tsum_const_smul]
    exact invTransformSummable F f

/--
The inverse of the Amice transform, sending a power series `F` to the unique measure that sends
`mahler n` to the `n`-th coefficient of `F`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3be085b70a1f356a9abe33d20cabdae0ad3d94c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
