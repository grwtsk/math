# piecewiseLeOfEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75f6128e016d9898fcbb2fdb08f54ef43501808dff52842ed82a11048b600a98",
  "kind": "def",
  "lexical_name": "piecewiseLeOfEq",
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
  "slug": "piecewiseleofeq--9acf908f1e2ad9bd99648e10",
  "source": {
    "blob": "91b5e7139bf1f2d442ffa4a4297aab91a9cf0168",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 923,
    "line": 909,
    "path": "GRWTSK/Topology/GeneralTopology/Trivialization/Variant299ea863339dff528cd2a037edeb4aa3ddc0d6bc41da1663aa8ef495d32d9e91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9acf908f1e2ad9bd99648e10722259b98e93b3fb077a573acd0db27d40983ece",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Trivialization/Variant299ea863339dff528cd2a037edeb4aa3ddc0d6bc41da1663aa8ef495d32d9e91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75f6128e016d9898fcbb2fdb08f54ef43501808dff52842ed82a11048b600a98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 909–923.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def piecewiseLeOfEq [LinearOrder B] [OrderTopology B] (e e' : Trivialization F proj)
    (a : B) (He : a ∈ e.baseSet) (He' : a ∈ e'.baseSet) (Heq : ∀ p, proj p = a → e p = e' p) :
    Trivialization F proj :=
  e.piecewise e' (Iic a)
    (Set.ext fun x => and_congr_left_iff.2 fun hx => by
      obtain rfl : x = a := mem_singleton_iff.1 (frontier_Iic_subset _ hx)
      simp [He, He'])
    fun p hp => Heq p <| frontier_Iic_subset _ hp.2

/-- Given two bundle trivializations `e`, `e'` of a topological fiber bundle `proj : Z → B` over a
linearly ordered base `B` and a point `a ∈ e.baseSet ∩ e'.baseSet`, `e.piecewise_le e' a He He'`
is the bundle trivialization over `Set.ite (Iic a) e.baseSet e'.baseSet` that is equal to `e` on
points `p` such that `proj p ≤ a` and is equal to `((e' p).1, h (e' p).2)` otherwise, where
`h = e'.coord_change_homeomorph e _ _` is the homeomorphism of the fiber such that
`h (e' p).2 = (e p).2` whenever `e p = a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Trivialization/Variant299ea863339dff528cd2a037edeb4aa3ddc0d6bc41da1663aa8ef495d32d9e91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Trivialization/Variant299ea863339dff528cd2a037edeb4aa3ddc0d6bc41da1663aa8ef495d32d9e91.lean#L909).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91b5e7139bf1f2d442ffa4a4297aab91a9cf0168` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
