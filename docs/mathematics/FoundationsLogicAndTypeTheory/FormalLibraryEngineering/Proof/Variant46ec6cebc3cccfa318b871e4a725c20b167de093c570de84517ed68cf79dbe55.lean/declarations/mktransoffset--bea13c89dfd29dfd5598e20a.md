# mkTransOffset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76aca3bbc5e11fa9515d82ea549795183b02e8089146607570388b8f06e404e0",
  "kind": "def",
  "lexical_name": "mkTransOffset",
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
  "slug": "mktransoffset--bea13c89dfd29dfd5598e20a",
  "source": {
    "blob": "4639e87c7e5fcd21a73bd0e32072ba2f5fd1fd85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant46ec6cebc3cccfa318b871e4a725c20b167de093c570de84517ed68cf79dbe55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bea13c89dfd29dfd5598e20a6fe51e0e5f82f3faa8bf6bc2b94716255dd21a0c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant46ec6cebc3cccfa318b871e4a725c20b167de093c570de84517ed68cf79dbe55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76aca3bbc5e11fa9515d82ea549795183b02e8089146607570388b8f06e404e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkTransOffset (p₁ : ProofInfo) (p₂ : ProofInfo) (v : NodeId) : OrderM ProofInfo := do
  let { w := u, k:= k₁, proof := h₁, .. } := p₁
  let { w, k := k₂, proof := h₂, .. } := p₂
  let ns := (← getStruct).nodes
  let h ← mkTransOffsetProof ns[u]! ns[w]! ns[v]! k₁ k₂ h₁ h₂
  return { w := p₁.w, k.k := k₁.k + k₂.k, k.strict := k₁.strict || k₂.strict, proof := h }

/--
Assume `p₁` is `{ w := u, k := k₁, proof := p₁ }` and `p₂` is `{ w := w, k := k₂, proof := p₂ }`
`p₁` is the proof for edge `u -(k₁)→ w` and `p₂` the proof for edge `w -(k₂)-> v`.
Then, this function returns a proof for edge `u -(k₁+k₂) -> v`.

Remark: if the order does not support offset `k₁` and `k₂` are zero.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant46ec6cebc3cccfa318b871e4a725c20b167de093c570de84517ed68cf79dbe55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant46ec6cebc3cccfa318b871e4a725c20b167de093c570de84517ed68cf79dbe55.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4639e87c7e5fcd21a73bd0e32072ba2f5fd1fd85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
