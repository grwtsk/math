# ofBijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3b980b7f84745906504274cdf16c00070389b0821259339ce3101b081ffa84f",
  "kind": "def",
  "lexical_name": "ofBijective",
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
  "slug": "ofbijective--8e10a859784d14c8ef73de3f",
  "source": {
    "blob": "e95553dc8bb4a821bea29b8e20eb347fc66a63ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 362,
    "path": "GRWTSK/Algebra/LinearAlgebra/Banach/Variantba55a5442128012f378d8a55626d8f90fd36f9f498147a2e3b9d52d6249ee7a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e10a859784d14c8ef73de3f1269d697b0cba1b8a0fa67da536b791fd750e4cb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Banach/Variantba55a5442128012f378d8a55626d8f90fd36f9f498147a2e3b9d52d6249ee7a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3b980b7f84745906504274cdf16c00070389b0821259339ce3101b081ffa84f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofBijective (f : E →L[𝕜] F) (hinj : ker f = ⊥) (hsurj : LinearMap.range f = ⊤) :
    E ≃L[𝕜] F :=
  (LinearEquiv.ofBijective ↑f
        ⟨LinearMap.ker_eq_bot.mp hinj,
          LinearMap.range_eq_top.mp hsurj⟩).toContinuousLinearEquivOfContinuous
    -- Porting note: added `by convert`
    (by convert f.continuous)
#align continuous_linear_equiv.of_bijective ContinuousLinearEquiv.ofBijective

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Banach/Variantba55a5442128012f378d8a55626d8f90fd36f9f498147a2e3b9d52d6249ee7a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Banach/Variantba55a5442128012f378d8a55626d8f90fd36f9f498147a2e3b9d52d6249ee7a0.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e95553dc8bb4a821bea29b8e20eb347fc66a63ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
