# ContMDiffWithinAt.mfderivWithin_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84df3cc9-8ef6-81b2-9423-b4ea9105cebf",
  "kind": "theorem",
  "lexical_name": "ContMDiffWithinAt.mfderivWithin_const",
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
  "slug": "contmdiffwithinat-mfderivwithin-const--dd813c5b1bce90277e1ae8cf",
  "source": {
    "blob": "25a8536f3f108b876025898888e11534f91450da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 200,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantc33c3134f6d94bc451e2fde2d1544f4370cff892a7e8355424de58d700e80adb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd813c5b1bce90277e1ae8cfa0d113cc46b841cbf29ff15c160e026e846a55d5",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantc33c3134f6d94bc451e2fde2d1544f4370cff892a7e8355424de58d700e80adb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84df3cc9-8ef6-81b2-9423-b4ea9105cebf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContMDiffWithinAt.mfderivWithin_const {x₀ : M} {f : M → M'}
    (hf : CMDiffAt[s] n f x₀) (hmn : m + 1 ≤ n) (hx : x₀ ∈ s) (hs : UniqueMDiff[s]) :
    CMDiffAt[s] m (inTangentCoordinates I I' id f (mfderiv[s] f) x₀) x₀ := by
  have : CMDiffAt[s ×ˢ s] n (fun x : M × M ↦ f x.2) (x₀, x₀) :=
    hf.comp (x₀, x₀) contMDiffWithinAt_snd mapsTo_snd_prod
  exact this.mfderivWithin contMDiffWithinAt_id hx (mapsTo_id _) hmn hs

/-- The function that sends `x` to the `y`-derivative of `f(x,y)` at `g(x)` applied to `g₂(x)` is
`C^n` at `x₀`, where the derivative is taken as a continuous linear map.
We have to assume that `f` is `C^(n+1)` at `(x₀, g(x₀))` and `g` is `C^n` at `x₀`.
We have to insert a coordinate change from `x₀` to `g₁(x)` to make the derivative sensible.

This is similar to `ContMDiffWithinAt.mfderivWithin`, but where the continuous linear map is
applied to a (variable) vector.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantc33c3134f6d94bc451e2fde2d1544f4370cff892a7e8355424de58d700e80adb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantc33c3134f6d94bc451e2fde2d1544f4370cff892a7e8355424de58d700e80adb.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25a8536f3f108b876025898888e11534f91450da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
