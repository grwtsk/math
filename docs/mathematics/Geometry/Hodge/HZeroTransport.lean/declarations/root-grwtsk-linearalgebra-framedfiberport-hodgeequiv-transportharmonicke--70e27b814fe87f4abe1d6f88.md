# _root_.GRWTSK.LinearAlgebra.FramedFiberPort.HodgeEquiv.transportHarmonicKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ca3ffd9a473b567f4a8fc4b36be7008b8dd5cc7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/Geometry/Hodge/HZeroTransport.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c193786b-8400-59b5-be6e-63eed6680b0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df1c43c6-d11d-9393-a593-50c97124f32f",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.LinearAlgebra.FramedFiberPort.HodgeEquiv.transportHarmonicKernel",
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
  "slug": "root-grwtsk-linearalgebra-framedfiberport-hodgeequiv-transportharmonicke--70e27b814fe87f4abe1d6f88",
  "source": {
    "blob": "6ca3ffd9a473b567f4a8fc4b36be7008b8dd5cc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 67,
    "path": "GRWTSK/Geometry/Hodge/HZeroTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70e27b814fe87f4abe1d6f88565b866b8543c4699e729e5b8c5438be81524171",
  "verification": {
    "reference": "docs/verification/Geometry/Hodge/HZeroTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df1c43c6-d11d-9393-a593-50c97124f32f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.LinearAlgebra.FramedFiberPort.HodgeEquiv.transportHarmonicKernel
    (P : HodgeEquiv A B) (K : HarmonicKernelExact A) :
    HarmonicKernelExact B where
  harmonic_iff_cocycle := by
    intro y
    let x : A₀ := P.equiv0.symm y
    constructor
    · intro hy
      have hAx : A.IsHarmonic0 x := by
        apply (P.harmonic0_iff x).2
        simpa [x] using hy
      have hδA : A.delta x = 0 := (K.harmonic_iff_cocycle x).1 hAx
      have hcomm := P.delta_apply x
      rw [hδA] at hcomm
      simpa [x] using hcomm.symm
    · intro hδB
      have hδA : A.delta x = 0 := by
        apply P.equiv1.injective
        have hcomm := P.delta_apply x
        simpa [x, hδB] using hcomm
      have hAx : A.IsHarmonic0 x := (K.harmonic_iff_cocycle x).2 hδA
      have hBy : B.IsHarmonic0 (P.equiv0 x) := (P.harmonic0_iff x).1 hAx
      simpa [x] using hBy

/-- Compatibility name for the exact harmonic-kernel theorem transport. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Hodge/HZeroTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Hodge/HZeroTransport.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ca3ffd9a473b567f4a8fc4b36be7008b8dd5cc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
