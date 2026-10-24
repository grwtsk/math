# localFrameCoeff_eq_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8faf46c7aa6cf751428e604e21bad1cbbe246750",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 445,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58f4f475-888f-ae57-9846-d8662b1048e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5b1ec71-4e36-e9b2-6e8b-5dad0f89561a",
  "kind": "lemma",
  "lexical_name": "localFrameCoeff_eq_coeff",
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
  "slug": "localframecoeff-eq-coeff--74a52c04d2ece4f9a41dbdaa",
  "source": {
    "blob": "8faf46c7aa6cf751428e604e21bad1cbbe246750",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 445,
    "path": "GRWTSK/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74a52c04d2ece4f9a41dbdaa2caf372086fa02961cd646b04815e9dacbf008c4",
  "verification": {
    "reference": "docs/verification/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5b1ec71-4e36-e9b2-6e8b-5dad0f89561a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma localFrameCoeff_eq_coeff (hxe : x ∈ e.baseSet) {i : ι} :
    e.localFrameCoeff I b i x (s x) = b.repr (e ((T% s) x)).2 i := by
  simp [e.localFrameCoeff_apply_of_mem_baseSet b hxe, basisAt]

@[deprecated (since := "2026-07-26")] alias localFrame_coeff_eq_coeff := localFrameCoeff_eq_coeff

end Bundle.Trivialization

/-! ### Determining smoothness of a section via its local frame coefficients
We show that for finite rank bundles over a complete field, a section is smooth iff its coefficients
in a local frame induced by a local trivialisation are. In many contexts, this statement holds for
*any* local frame (e.g., for all real bundles which admit a continuous bundle metric, as is
proven in `OrthonormalFrame.lean`).
-/

variable [VectorBundle 𝕜 F V] [ContMDiffVectorBundle 1 F V I]
  {e : Trivialization F (TotalSpace.proj : TotalSpace F V → M)} [MemTrivializationAtlas e]
  {ι : Type*} (b : Basis ι 𝕜 F) {s : Π x : M, V x} {t : Set M} {k : ℕ∞ω} {x x' : M}
  [FiniteDimensional 𝕜 F] [CompleteSpace 𝕜] [ContMDiffVectorBundle k F V I]

/-- If `s` is `C^k` at `x`, so is its coefficient `b.localFrameCoeff e i` in the local frame
near `x` induced by `e` and `b` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8faf46c7aa6cf751428e604e21bad1cbbe246750` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
