# binary_quadratic_splits_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0249ff03-6d8f-a100-da75-4d99672ae961",
  "kind": "theorem",
  "lexical_name": "binary_quadratic_splits_iff",
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
  "slug": "binary-quadratic-splits-iff--22e360f214b7625ba9f087a5",
  "source": {
    "blob": "a7b70c96e61ea747859079415d529279e2d15c68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 138,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22e360f214b7625ba9f087a558188011d5bd1058262f0269f8f1129a61b9cfde",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0249ff03-6d8f-a100-da75-4d99672ae961`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem binary_quadratic_splits_iff (k : ZMod 2) :
    (X^2+X+C k : (ZMod 2)[X]).Splits ↔ k = 0 := by
  constructor
  · intro hs
    have hd : (X^2+X+C k : (ZMod 2)[X]).degree ≠ 0 := by
      rw [add_assoc, degree_add_eq_left_of_degree_lt (by simp)]
      simp
    obtain ⟨r,hr⟩ := hs.exists_eval_eq_zero hd
    have hh : r^2+r = 0 := by
      have ht : ∀ z : ZMod 2, z^2+z = 0 := by decide
      exact ht r
    simpa only [eval_add, eval_pow, eval_X, eval_C, hh, zero_add] using hr
  · intro hk
    rw [hk, C_0, add_zero]
    have he : (X^2+X : (ZMod 2)[X]) = X*(X+C 1) := by simp only [C_1]; ring
    rw [he]
    exact Splits.X.mul (Splits.X_add_C 1)

/-- Split slopes in F_2 are zero and one: they are NOT r and -r. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7b70c96e61ea747859079415d529279e2d15c68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
