# orbitDistribution_equilibrates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "887f065e8372a2923c5ec8b308543837ebf7ca6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 378,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01676949ca35f876b67126044334e680137886eb5d3a265e9183e3c2da4e82ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a97a32a-e4b6-6837-038b-09b2b665bd80",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f0cf461-3b41-93a6-8e40-2ab01af7fb3a",
  "kind": "theorem",
  "lexical_name": "orbitDistribution_equilibrates",
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
  "slug": "orbitdistribution-equilibrates--4b1ba9fa40e8fd225d8a81c9",
  "source": {
    "blob": "887f065e8372a2923c5ec8b308543837ebf7ca6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 378,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant01676949ca35f876b67126044334e680137886eb5d3a265e9183e3c2da4e82ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b1ba9fa40e8fd225d8a81c9ca7c564f38d9486ce7c04124a5d5491e43041310",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant01676949ca35f876b67126044334e680137886eb5d3a265e9183e3c2da4e82ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f0cf461-3b41-93a6-8e40-2ab01af7fb3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orbitDistribution_equilibrates
    (shell : SpectralOrbitShell A H)
    (diffusionTime : ℝ) (state : H) :
    Filter.Tendsto
      (fun orbitTime ↦
        shell.orbitDistribution diffusionTime orbitTime state)
      Filter.atTop
      (nhds
        (shell.orbit.invariantProjector
          (shell.activatedResidue diffusionTime state))) :=
  shell.orbit.equilibrates
    (shell.activatedResidue diffusionTime state)

end SpectralOrbitShell

/--
Accepted exact shell state, indexed by both its accepted source and the
realization used to place that source in the Hilbert carrier.

The Hilbert value is computed from the index; there is no public field through
which an unrelated value can be paired with certificate metadata.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant01676949ca35f876b67126044334e680137886eb5d3a265e9183e3c2da4e82ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant01676949ca35f876b67126044334e680137886eb5d3a265e9183e3c2da4e82ff.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `887f065e8372a2923c5ec8b308543837ebf7ca6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
