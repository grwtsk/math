# rootEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cfa0e607c7b763263de5b3867ba19288a46aa503625579a39b3e743cf28805f5",
  "kind": "def",
  "lexical_name": "rootEquiv",
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
  "slug": "rootequiv--77ba12dab2e49b669849e65c",
  "source": {
    "blob": "a7b70c96e61ea747859079415d529279e2d15c68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 58,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77ba12dab2e49b669849e65ce30c4555fb764d2b9e498a7419190fc5dd090ddc",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cfa0e607c7b763263de5b3867ba19288a46aa503625579a39b3e743cf28805f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rootEquiv (f g : K[X]) (k u s : K) (hk : k ≠ 0) (hu : u ≠ 0)
    (h : C k * g = f.comp (slopePolynomial u s)) :
    {z : K // g.eval z = 0} ≃ {z : K // f.eval z = 0} where
  toFun z := ⟨u*z.val+s, (root_transport_iff f g k u s hk h z.val).mp z.property⟩
  invFun z := ⟨(z.val-s)/u, by
    apply (root_transport_iff f g k u s hk h _).mpr
    have he : u*((z.val-s)/u)+s = z.val := by field_simp [hu] <;> ring
    rw [he]
    exact z.property⟩
  left_inv z := by
    apply Subtype.ext
    change (u*z.val+s-s)/u = z.val
    field_simp [hu] <;> ring
  right_inv z := by
    apply Subtype.ext
    change u*((z.val-s)/u)+s = z.val
    field_simp [hu] <;> ring

/-- Distinct directions stay distinct; no orientation sign is supplied over a finite field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7b70c96e61ea747859079415d529279e2d15c68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
