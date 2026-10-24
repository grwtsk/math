# map_causalEquivalent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35a11ff8-9764-7f53-f7ca-01370cfd3c0a",
  "kind": "theorem",
  "lexical_name": "map_causalEquivalent",
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
  "slug": "map-causalequivalent--9fe347bc5debc6d424c9e71f",
  "source": {
    "blob": "11cc1b7af60e7d2968c5a3c4a3c6bce195657fad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 111,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fe347bc5debc6d424c9e71f78734fa8ee2cfe17735468a93376b9464e5a3896",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35a11ff8-9764-7f53-f7ca-01370cfd3c0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_causalEquivalent
    (F : M.Hom N)
    (hInput : Function.Surjective F.mapInput)
    {x y : M.State}
    (hxy : M.CausalEquivalent x y) :
    N.CausalEquivalent (F.mapState x) (F.mapState y) := by
  intro targetInputs r
  rcases hInput.list_map targetInputs with ⟨sourceInputs, hsource⟩
  subst targetInputs
  rw [← F.map_run sourceInputs x, ← F.map_run sourceInputs y]
  rw [← F.observe_natural r (M.run sourceInputs x),
    ← F.observe_natural r (M.run sourceInputs y)]
  exact congrArg (F.mapObservation r)
    (hxy sourceInputs (F.pullResolution r))

/-- A causality-preserving homomorphism descends to causal-state quotients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11cc1b7af60e7d2968c5a3c4a3c6bce195657fad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
