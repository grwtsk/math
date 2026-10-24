# rankOne_of_nontrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8607dc46c8d5b7f4e12e0877b93035784f6299cfcfb74809aae52cc950a4cbe9",
  "kind": "def",
  "lexical_name": "rankOne_of_nontrivial",
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
  "slug": "rankone-of-nontrivial--8fd5236ecb8451ff7f609cb4",
  "source": {
    "blob": "6ce4fe69acd1f54adfc52a483c6b3e7c82c55282",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 189,
    "path": "GRWTSK/Algebra/UniversalAlgebra/RankOne/Variant607f399f9be34749a577cd5522de42199d1af1f64bc5cf8488583920f6be3925.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fd5236ecb8451ff7f609cb4952274218de54b2e63a44df4e3dc82adec8b97cf",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/RankOne/Variant607f399f9be34749a577cd5522de42199d1af1f64bc5cf8488583920f6be3925.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8607dc46c8d5b7f4e12e0877b93035784f6299cfcfb74809aae52cc950a4cbe9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rankOne_of_nontrivial (H : Nontrivial (ValueGroup₀ (.ofClass v))ˣ) : RankOne v where
  exists_val_nontrivial := by
    by_contra! H'
    rw [nontrivial_iff_exists_ne 1] at H
    obtain ⟨x, hx⟩ := H
    obtain ⟨k, hk⟩ := ValueGroup₀.restrict₀_surjective _ x.val
    have h0 : v k ≠ 0 := by
      apply_fun embedding at hk
      simp only [embedding_restrict₀, MonoidWithZeroHom.coe_ofClass] at hk
      simp [hk]
    have h1 : v k ≠ 1 := by
      apply_fun embedding at hk
      simp only [embedding_restrict₀, MonoidWithZeroHom.coe_ofClass] at hk
      apply_fun Units.val at hx using
          Units.val_injective (α := (MonoidWithZeroHom.ofClass v).ValueGroup₀)
      intro h
      apply_fun embedding at hx using embedding_injective (f := .ofClass v)
      simp [← hk, h] at hx
    exact h1 (H' k h0)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/RankOne/Variant607f399f9be34749a577cd5522de42199d1af1f64bc5cf8488583920f6be3925.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/RankOne/Variant607f399f9be34749a577cd5522de42199d1af1f64bc5cf8488583920f6be3925.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ce4fe69acd1f54adfc52a483c6b3e7c82c55282` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
