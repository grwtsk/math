# contMDiff_inclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24699d2b-ff51-c1f4-ebde-9ea77babb83f",
  "kind": "theorem",
  "lexical_name": "contMDiff_inclusion",
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
  "slug": "contmdiff-inclusion--bec1e089ebcc115293784f83",
  "source": {
    "blob": "5296fbb115576f051f88f25372a75764296adb9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 339,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bec1e089ebcc115293784f837d9a411721567a5abe047f6032196ebc4ae5d754",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24699d2b-ff51-c1f4-ebde-9ea77babb83f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiff_inclusion {n : WithTop ℕ∞} {U V : Opens M} (h : U ≤ V) :
    ContMDiff I I n (Opens.inclusion h : U → V) := by
  rintro ⟨x, hx : x ∈ U⟩
  apply (contDiffWithinAt_localInvariantProp n).liftProp_inclusion
  intro y
  dsimp only [ContDiffWithinAtProp, id_comp, preimage_univ]
  rw [Set.univ_inter]
  exact contDiffWithinAt_id.congr I.rightInvOn (congr_arg I (I.left_inv y))

@[deprecated (since := "2024-11-20")] alias smooth_subtype_iff := contMDiffAt_subtype_iff

@[deprecated (since := "2024-11-20")] alias smooth_subtype_val := contMDiff_subtype_val

@[deprecated (since := "2024-11-20")] alias Smooth.extend_one := ContMDiff.extend_one
@[deprecated (since := "2024-11-20")] alias Smooth.extend_zero := ContMDiff.extend_zero

@[deprecated (since := "2024-11-20")] alias smooth_inclusion := contMDiff_inclusion

end Inclusion

end ChartedSpace

/-! ### Open embeddings and their inverses are `C^n` -/

section

variable {e : M → H} (h : IsOpenEmbedding e) {n : WithTop ℕ∞}

/-- If the `ChartedSpace` structure on a manifold `M` is given by an open embedding `e : M → H`,
then `e` is `C^n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5296fbb115576f051f88f25372a75764296adb9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
