# mem_ker_toLin'_lapMatrix_of_connectedComponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62654684abd09d46786536f0172042cb517cb891",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc778bc3-4d04-6f1d-f359-26031fd4e7c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c7f7caf-d48c-154b-5f5a-08cf8d060a46",
  "kind": "lemma",
  "lexical_name": "mem_ker_toLin'_lapMatrix_of_connectedComponent",
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
  "slug": "mem-ker-tolin-lapmatrix-of-connectedcomponent--f01c66db8b19e3ecf4cd9104",
  "source": {
    "blob": "62654684abd09d46786536f0172042cb517cb891",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 142,
    "path": "GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f01c66db8b19e3ecf4cd9104e25d75a4d4e472b29639e72ba0e18d2df8bb3e05",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c7f7caf-d48c-154b-5f5a-08cf8d060a46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_ker_toLin'_lapMatrix_of_connectedComponent {G : SimpleGraph V} [DecidableRel G.Adj]
    [DecidableEq G.ConnectedComponent] (c : G.ConnectedComponent) :
    (fun i ↦ if connectedComponentMk G i = c then 1 else 0) ∈
      LinearMap.ker (toLin' (lapMatrix ℝ G)) := by
  rw [LinearMap.mem_ker, toLin'_apply, lapMatrix_mulVec_eq_zero_iff_forall_reachable]
  intro i j h
  split_ifs with h₁ h₂ h₃
  · rfl
  · rw [← ConnectedComponent.eq] at h
    exact (h₂ (h₁ ▸ h.symm)).elim
  · rw [← ConnectedComponent.eq] at h
    exact (h₁ (h₃ ▸ h)).elim
  · rfl

/-- Given a connected component `c` of a graph `G`, `lapMatrix_ker_basis_aux c` is the map
`V → ℝ` which is `1` on the vertices in `c` and `0` elsewhere.
The family of these maps indexed by the connected components of `G` proves to be a basis
of the kernel of `lapMatrix G R` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62654684abd09d46786536f0172042cb517cb891` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
