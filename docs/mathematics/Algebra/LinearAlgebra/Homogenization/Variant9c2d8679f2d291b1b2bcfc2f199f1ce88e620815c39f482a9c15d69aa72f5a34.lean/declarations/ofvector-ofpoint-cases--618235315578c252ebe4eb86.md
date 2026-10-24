# ofVector_ofPoint_cases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bbc857f-8af2-4a00-4513-5b4f4570dae0",
  "kind": "theorem",
  "lexical_name": "ofVector_ofPoint_cases",
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
  "slug": "ofvector-ofpoint-cases--618235315578c252ebe4eb86",
  "source": {
    "blob": "970ed3deaebc1ed258763a9f6e1de2606d0e7e00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 160,
    "path": "GRWTSK/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:618235315578c252ebe4eb867748c3a2d72ea6665812a5a9aed9838564c8565e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bbc857f-8af2-4a00-4513-5b4f4570dae0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofVector_ofPoint_cases {R V P : Type*} [DivisionRing R] [AddCommGroup V] [Module R V]
    [AddTorsor V P] (x : Homogenization R P) {motive : Homogenization R P → Prop}
    (smul_ofPoint : ∀ (c : R) p, c ≠ 0 → motive (c • ofPoint p))
    (ofVector : ∀ v, motive (ofVector v)) : motive x := by
  cases x with | _ v c p =>
  rcases eq_or_ne c 0 with rfl | hc
  · simpa using ofVector v
  · convert smul_ofPoint c (c⁻¹ • v +ᵥ p) hc using 1
    rw [AffineMap.map_vadd, ofPoint_linear, vadd_eq_add, smul_add, map_smul, smul_inv_smul₀ hc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `970ed3deaebc1ed258763a9f6e1de2606d0e7e00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
