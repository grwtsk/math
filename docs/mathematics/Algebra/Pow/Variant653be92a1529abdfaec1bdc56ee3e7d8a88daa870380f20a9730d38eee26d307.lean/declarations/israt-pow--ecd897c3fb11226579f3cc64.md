# isRat_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f8c897e-3d1f-0e7f-e5a4-9602d103321a",
  "kind": "theorem",
  "lexical_name": "isRat_pow",
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
  "slug": "israt-pow--ecd897c3fb11226579f3cc64",
  "source": {
    "blob": "52388851373574c7b4c1cf1a4cf3dfebd0ebb8a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 165,
    "path": "GRWTSK/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecd897c3fb11226579f3cc649d5e9347190b60c6a133720e745b892cd6bf3ccc",
  "verification": {
    "reference": "docs/verification/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f8c897e-3d1f-0e7f-e5a4-9602d103321a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isRat_pow {α} [Ring α] {f : α → ℕ → α} {a : α} {an cn : ℤ} {ad b b' cd : ℕ} :
    f = HPow.hPow → IsRat a an ad → IsNat b b' →
    Int.pow an b' = cn → Nat.pow ad b' = cd →
    IsRat (f a b) cn cd := by
  rintro rfl ⟨_, rfl⟩ ⟨rfl⟩ (rfl : an ^ b = _) (rfl : ad ^ b = _)
  have := invertiblePow (ad:α) b
  rw [← Nat.cast_pow] at this
  use this; simp [invOf_pow, Commute.mul_pow]

attribute [local instance] monadLiftOptionMetaM in
/-- The `norm_num` extension which identifies expressions of the form `a ^ b`,
such that `norm_num` successfully recognises both `a` and `b`, with `b : ℕ`. -/
@[norm_num _ ^ (_ : ℕ)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52388851373574c7b4c1cf1a4cf3dfebd0ebb8a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
