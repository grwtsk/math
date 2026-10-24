# spectral_fiber_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdffaeef-9903-04c7-8d77-4ee991a00ebf",
  "kind": "theorem",
  "lexical_name": "spectral_fiber_reconstruction",
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
  "slug": "spectral-fiber-reconstruction--975a8ee5ebccf1db5c620540",
  "source": {
    "blob": "a157ee05239c00e71e4be74c23d7ce074ca995e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 69,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FiberReconstruction/Variantf8248e39d8ab6594195ffc54e793e0eb0645eb9c4613a4f3df7e01b313cfa341.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:975a8ee5ebccf1db5c6205401c38d0e65c52daa3d2711ffcb6538e471cce49af",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FiberReconstruction/Variantf8248e39d8ab6594195ffc54e793e0eb0645eb9c4613a4f3df7e01b313cfa341.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdffaeef-9903-04c7-8d77-4ee991a00ebf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectral_fiber_reconstruction {s : GridShape} {k : Nat}
    (H : GraphHeat (Expansion.expandedShape s) k)
    (t : NNReal)
    (τ : SpectralShellTorsion s k)
    (X : SpectralTensor (Expansion.expandedShape s) k) :
    reconstructedLiftedShell H t τ X = X := by
  unfold reconstructedLiftedShell
  change
    decodeShell
      (transportShell (SpectralShellTorsion.inverse τ)
        (transportShell τ
          (encodeShell
            (reconstructHeat (liftedHeat H t X).1 (liftedHeat H t X).2)))) = X
  rw [torsion_inverse_reconstruct]
  rw [decode_encode_shell]
  exact reconstruct_liftedHeat H t X

end Spectral
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FiberReconstruction/Variantf8248e39d8ab6594195ffc54e793e0eb0645eb9c4613a4f3df7e01b313cfa341.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FiberReconstruction/Variantf8248e39d8ab6594195ffc54e793e0eb0645eb9c4613a4f3df7e01b313cfa341.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a157ee05239c00e71e4be74c23d7ce074ca995e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
