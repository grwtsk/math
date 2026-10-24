# Polynomial.flt_catalan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87c98467-9745-5049-7f30-fd234feaf46b",
  "kind": "theorem",
  "lexical_name": "Polynomial.flt_catalan",
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
  "slug": "polynomial-flt-catalan--ab43d801cf0324a465b6353d",
  "source": {
    "blob": "a85343fffb3fbeebf89f1dedce8eef23dd12dc37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 202,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab43d801cf0324a465b6353db60ae02e4e7676c9d94c66e6823d758955c7270f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87c98467-9745-5049-7f30-fd234feaf46b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Polynomial.flt_catalan
    {p q r : ℕ} (hp : 0 < p) (hq : 0 < q) (hr : 0 < r)
    (hineq : q * r + r * p + p * q ≤ p * q * r)
    (chp : (p : k) ≠ 0) (chq : (q : k) ≠ 0) (chr : (r : k) ≠ 0)
    {a b c : k[X]} (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0) (hab : IsCoprime a b)
    {u v w : k} (hu : u ≠ 0) (hv : v ≠ 0) (hw : w ≠ 0)
    (heq : C u * a ^ p + C v * b ^ q + C w * c ^ r = 0) :
    a.natDegree = 0 ∧ b.natDegree = 0 ∧ c.natDegree = 0 := by
  -- WLOG argument: essentially three times flt_catalan_aux
  have hbc : IsCoprime b c := by
    apply rot_coprime heq hab <;> assumption
  have heq' : C v * b ^ q + C w * c ^ r + C u * a ^ p = 0 := by
    rwa [add_rotate] at heq
  have hca : IsCoprime c a := by
    apply rot_coprime heq' hbc <;> assumption
  refine ⟨?_, ?_, ?_⟩
  · apply flt_catalan_aux heq <;> assumption
  · rw [add_rotate] at heq hineq
    rw [mul_rotate] at hineq
    apply flt_catalan_aux heq <;> assumption
  · rw [← add_rotate] at heq hineq
    rw [← mul_rotate] at hineq
    apply flt_catalan_aux heq <;> assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a85343fffb3fbeebf89f1dedce8eef23dd12dc37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
