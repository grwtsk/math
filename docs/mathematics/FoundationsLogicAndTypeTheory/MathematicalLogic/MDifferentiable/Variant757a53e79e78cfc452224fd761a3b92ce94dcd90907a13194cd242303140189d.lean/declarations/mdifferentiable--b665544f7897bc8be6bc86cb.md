# mdifferentiable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d623622-b678-c150-1e6e-563bf1022c18",
  "kind": "theorem",
  "lexical_name": "mdifferentiable",
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
  "slug": "mdifferentiable--b665544f7897bc8be6bc86cb",
  "source": {
    "blob": "1dbddb9c92d0b28a17ea483b67f12d4fb1ab9031",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 345,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant757a53e79e78cfc452224fd761a3b92ce94dcd90907a13194cd242303140189d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b665544f7897bc8be6bc86cb12671371a851f35014c23e33a80ef46e60766e48",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant757a53e79e78cfc452224fd761a3b92ce94dcd90907a13194cd242303140189d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d623622-b678-c150-1e6e-563bf1022c18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mdifferentiable [ContMDiffVectorBundle 1 F Z I]
    (e : Trivialization F (π F Z)) [MemTrivializationAtlas e] :
    e.MDifferentiable (I.prod 𝓘(𝕜, F)) (I.prod 𝓘(𝕜, F)) :=
  ⟨e.contMDiffOn.mdifferentiableOn one_ne_zero, e.contMDiffOn_symm.mdifferentiableOn one_ne_zero⟩

set_option linter.dupNamespace false in
@[deprecated (since := "2026-05-24")] alias Bundle.Trivialization.mdifferentiable := mdifferentiable

end

end Bundle.Trivialization

end

section operations

variable {𝕜 B F M : Type*} {E : B → Type*}

variable
  -- Let `E` be a fiber bundle with base `B` and fiber `F` (a vector space over `𝕜`)
  [TopologicalSpace B] [TopologicalSpace (TotalSpace F E)] [∀ x, TopologicalSpace (E x)]
  [NormedAddCommGroup F] [NontriviallyNormedField 𝕜] [NormedSpace 𝕜 F] [FiberBundle F E]
  -- Moreover let `E` be a vector bundle
  [(x : B) → AddCommGroup (E x)] [(x : B) → Module 𝕜 (E x)] [VectorBundle 𝕜 F E]
  -- Let the base `B` be charted over a fixed model space `HB`
  {HB : Type*} [TopologicalSpace HB] [ChartedSpace HB B]
  -- Moreover let `HB` be modelled on a normed space `EB` so that `B` (and hence `E`) have
  -- differentiable structures
  {EB : Type*} [NormedAddCommGroup EB] [NormedSpace 𝕜 EB] {I : ModelWithCorners 𝕜 EB HB}

variable {f : B → 𝕜} {a : 𝕜} {s t : Π x : B, E x} {u : Set B} {x₀ : B}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant757a53e79e78cfc452224fd761a3b92ce94dcd90907a13194cd242303140189d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant757a53e79e78cfc452224fd761a3b92ce94dcd90907a13194cd242303140189d.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dbddb9c92d0b28a17ea483b67f12d4fb1ab9031` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
