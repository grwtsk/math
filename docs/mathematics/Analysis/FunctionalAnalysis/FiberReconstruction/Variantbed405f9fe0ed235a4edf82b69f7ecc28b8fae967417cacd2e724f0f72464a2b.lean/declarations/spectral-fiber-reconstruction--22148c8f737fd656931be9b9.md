# spectral_fiber_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be22895bd93705f45ef8cd318889b8580889c226",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/bed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53d006b3-1d91-335d-cf30-3cf18eaa5f8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12ce1615-80b1-b3b0-90c1-c1bbc92cb43d",
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
  "slug": "spectral-fiber-reconstruction--22148c8f737fd656931be9b9",
  "source": {
    "blob": "be22895bd93705f45ef8cd318889b8580889c226",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 61,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FiberReconstruction/Variantbed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22148c8f737fd656931be9b98253006eb4b3abd77e23fe776a31818740db904a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FiberReconstruction/Variantbed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12ce1615-80b1-b3b0-90c1-c1bbc92cb43d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–79.

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

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FiberReconstruction/Variantbed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FiberReconstruction/Variantbed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be22895bd93705f45ef8cd318889b8580889c226` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
