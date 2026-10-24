# sourceHomotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e374bad2434b84da39f08bd735d85125681a4208bc8a73daad42a4f40d85b4e3",
  "kind": "def",
  "lexical_name": "sourceHomotopy",
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
  "slug": "sourcehomotopy--07bc71cefd088d8e34547a18",
  "source": {
    "blob": "abdffa9d3ec64e1072c1d01603352aa0f0ac7377",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 61,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/JetRectangleCount.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07bc71cefd088d8e34547a1866dfdb424d58b9e5d324fea0a1c20ffaf757d79a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/JetRectangleCount.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e374bad2434b84da39f08bd735d85125681a4208bc8a73daad42a4f40d85b4e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sourceHomotopy (l u : Coordinates) (hx : l.1 < u.1) (hy : l.2 < u.2)
    {n : ℕ} {a : List ℚ} {p : List Plan} {y : List Coordinates}
    (hm : RationalRectangleMesh.check n a = true)
    (ht : JetPoleContour.check n (RationalRectangleMesh.vertices l u a) p y = true) :
    HomotopyWith (PoleContourHomotopy.sourceLoop n (RationalRectangleMesh.vertices l u a))
      ((RationalRectangleMesh.rectangle l u hx hy).image poleNormalizedZeta
        differentiable_poleNormalizedZeta.continuous.continuousOn)
      (fun g => g 0 = g 1 ∧ ∀ t, g t ≠ 0) := by
  let D := RationalRectangleMesh.rectangle l u hx hy
  let H := RectanglePerimeterMesh.boundaryHomotopy D (RationalRectangleMesh.admissible hm)
  have hc := RationalRectangleMesh.curve_eq l u hx hy hm
  have hb := boundary_of_tube l u hx hy hm ht
  refine
    { toFun := fun q => poleNormalizedZeta (H q)
      continuous_toFun := differentiable_poleNormalizedZeta.continuous.comp (map_continuous H)
      map_zero_left := ?_
      map_one_left := ?_
      prop' := fun lam => ⟨congrArg poleNormalizedZeta (H.prop lam).1,
        fun t => hb _ ((H.prop lam).2 t)⟩ }
  · intro t
    rw [H.map_zero_left]
    change poleNormalizedZeta (RectanglePerimeterMesh.curve D n (RationalRectangleMesh.marks a) t) =
      poleNormalizedZeta (polygonMap n (RationalRectangleMesh.points l u a) t)
    exact congrArg poleNormalizedZeta (congrArg (fun g : C(I, ℂ) => g t) hc).symm
  · intro t
    rw [H.map_one_left]
    rfl

/-- Same signed source invariant; geometry is not an editable orientation label. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/JetRectangleCount.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/JetRectangleCount.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abdffa9d3ec64e1072c1d01603352aa0f0ac7377` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
