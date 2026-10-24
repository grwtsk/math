# multipliableUniformlyOn_of_clog

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:919b1467-1115-c8cf-39dd-9e1905202cf3",
  "kind": "lemma",
  "lexical_name": "multipliableUniformlyOn_of_clog",
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
  "slug": "multipliableuniformlyon-of-clog--6503d29ff7fb26ab2d9d9ca3",
  "source": {
    "blob": "b4cbb9b0ebdc09c3a814cbc41a7c3bfd42d2ccb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 80,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MultipliableUniformlyOn/Variant3954e287e54d72411e2b02b0035215f6be515a8e5de132a2ab896de21fbef0be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6503d29ff7fb26ab2d9d9ca3aac867a377e1fab9aedff96769589eb21cd87e6b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MultipliableUniformlyOn/Variant3954e287e54d72411e2b02b0035215f6be515a8e5de132a2ab896de21fbef0be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:919b1467-1115-c8cf-39dd-9e1905202cf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma multipliableUniformlyOn_of_clog (hf : SummableUniformlyOn (fun i x ↦ log (f i x)) s)
    (hfn : ∀ x ∈ s, ∀ i, f i x ≠ 0)
    (hg : BddAbove <| (fun x ↦ (∑' i, log (f i x)).re) '' s) :
    MultipliableUniformlyOn f s :=
  ⟨_, hasProdUniformlyOn_of_clog hf hfn hg⟩

end Complex

namespace Summable

variable {R : Type*} [NormedCommRing R] [NormOneClass R] [CompleteSpace R] [TopologicalSpace α]
  {f : ι → α → R}

/-- If a sequence of continuous functions `f i x` on an open compact `K` have norms eventually
bounded by a summable function, then `∏' i, (1 + f i x)` is uniformly convergent on `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MultipliableUniformlyOn/Variant3954e287e54d72411e2b02b0035215f6be515a8e5de132a2ab896de21fbef0be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MultipliableUniformlyOn/Variant3954e287e54d72411e2b02b0035215f6be515a8e5de132a2ab896de21fbef0be.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4cbb9b0ebdc09c3a814cbc41a7c3bfd42d2ccb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
