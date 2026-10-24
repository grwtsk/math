# mem_iInf_maxGenEigenspace_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef5407ad-4b09-debe-4353-805e18221a6e",
  "kind": "theorem",
  "lexical_name": "mem_iInf_maxGenEigenspace_iff",
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
  "slug": "mem-iinf-maxgeneigenspace-iff--b98492261d60cecf86eba243",
  "source": {
    "blob": "9289ca1c15ece3d2ed9ad1a2a87a4e8107b1a844",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 42,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b98492261d60cecf86eba24391578b13933ab32ac99441564d44db0bf833dca6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef5407ad-4b09-debe-4353-805e18221a6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_iInf_maxGenEigenspace_iff (χ : ι → R) (m : M) :
    m ∈ ⨅ i, (f i).maxGenEigenspace (χ i) ↔ ∀ j, ∃ k : ℕ, ((f j - χ j • ↑1) ^ k) m = 0 := by
  simp

/-- Given a family of endomorphisms `i ↦ f i`, a family of candidate eigenvalues `i ↦ μ i`, and a
submodule `p` which is invariant wrt every `f i`, the intersection of `p` with the simultaneous
maximal generalised eigenspace (taken over all `i`), is the same as the simultaneous maximal
generalised eigenspace of the `f i` restricted to `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant3d4428451604004363331ce940199c5b5c06fdbc19b04dc003da44cf0f311f10.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9289ca1c15ece3d2ed9ad1a2a87a4e8107b1a844` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
