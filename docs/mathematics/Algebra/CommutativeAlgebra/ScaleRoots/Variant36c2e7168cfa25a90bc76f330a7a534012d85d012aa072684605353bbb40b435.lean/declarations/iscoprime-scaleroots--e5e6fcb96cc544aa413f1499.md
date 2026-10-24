# isCoprime_scaleRoots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1519d48-44db-e561-6e49-927fea79becd",
  "kind": "lemma",
  "lexical_name": "isCoprime_scaleRoots",
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
  "slug": "iscoprime-scaleroots--e5e6fcb96cc544aa413f1499",
  "source": {
    "blob": "39eea03aa4745efc5bd2f3e803d1c9455d3325da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 288,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5e6fcb96cc544aa413f14992fe0acf4930327ba9354d07bc190693d2e9da0a4",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1519d48-44db-e561-6e49-927fea79becd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCoprime_scaleRoots (p q : R[X]) (r : R) (hr : IsUnit r) (h : IsCoprime p q) :
    IsCoprime (p.scaleRoots r) (q.scaleRoots r) := by
  obtain ⟨a, b, e⟩ := h
  let s : R := ↑hr.unit⁻¹
  have : natDegree (a * p) = natDegree (b * q) := by
    apply natDegree_eq_of_natDegree_add_eq_zero
    rw [e, natDegree_one]
  use s ^ natDegree (a * p) • s ^ (natDegree a + natDegree p - natDegree (a * p)) • a.scaleRoots r
  use s ^ natDegree (a * p) • s ^ (natDegree b + natDegree q - natDegree (b * q)) • b.scaleRoots r
  simp only [smul_smul, smul_mul_assoc, ← mul_scaleRoots, mul_assoc, ← mul_pow, IsUnit.val_inv_mul,
    one_pow, mul_one, ← smul_add, ← add_scaleRoots_of_natDegree_eq _ _ _ this, e, natDegree_one,
    Nat.sub_zero, one_scaleRoots, one_smul, s]

alias _root_.IsCoprime.scaleRoots := isCoprime_scaleRoots

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39eea03aa4745efc5bd2f3e803d1c9455d3325da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
