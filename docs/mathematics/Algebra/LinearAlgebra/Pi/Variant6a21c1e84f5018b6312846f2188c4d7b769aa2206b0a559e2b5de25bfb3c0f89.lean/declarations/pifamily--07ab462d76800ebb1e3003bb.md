# piFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b0149a8d3640d59384c665e571f4f7a75f10607c93fd09ca265aa21c2c0d9ab",
  "kind": "def",
  "lexical_name": "piFamily",
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
  "slug": "pifamily--07ab462d76800ebb1e3003bb",
  "source": {
    "blob": "44af62c88aaacde336a4d22ffcf8cac2cd134ba3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 81,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant6a21c1e84f5018b6312846f2188c4d7b769aa2206b0a559e2b5de25bfb3c0f89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07ab462d76800ebb1e3003bb33f4135c33eb76cbc2742659ffd796f2562a564b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant6a21c1e84f5018b6312846f2188c4d7b769aa2206b0a559e2b5de25bfb3c0f89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b0149a8d3640d59384c665e571f4f7a75f10607c93fd09ca265aa21c2c0d9ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def piFamily (f : Π (p : Π i, κ i), MultilinearMap R (fun i ↦ M i (p i)) (N p)) :
    MultilinearMap R (fun i => Π j : κ i, M i j) (Π t : Π i, κ i, N t) where
  toFun x := fun p => f p (fun i => x i (p i))
  map_update_add' {dec} m i x y := funext fun p => by
    dsimp
    simp_rw [Function.apply_update (fun i m => m (p i)) m, Pi.add_apply, (f p).map_update_add]
  map_update_smul' {dec} m i c x := funext fun p => by
    dsimp
    simp_rw [Function.apply_update (fun i m => m (p i)) m, Pi.smul_apply, (f p).map_update_smul]

/-- When applied to a family of finitely-supported functions each supported on a single element,
`piFamily` is itself supported on a single element, with value equal to the map `f` applied
at that point. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant6a21c1e84f5018b6312846f2188c4d7b769aa2206b0a559e2b5de25bfb3c0f89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant6a21c1e84f5018b6312846f2188c4d7b769aa2206b0a559e2b5de25bfb3c0f89.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44af62c88aaacde336a4d22ffcf8cac2cd134ba3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
