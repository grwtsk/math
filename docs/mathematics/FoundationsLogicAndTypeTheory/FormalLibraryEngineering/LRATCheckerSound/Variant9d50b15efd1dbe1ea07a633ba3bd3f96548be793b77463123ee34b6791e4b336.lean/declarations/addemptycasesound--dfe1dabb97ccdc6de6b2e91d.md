# addEmptyCaseSound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "beda50f83769020342741b70216f54ae8877c419",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d50b15efd1dbe1ea07a633ba3bd3f96548be793b77463123ee34b6791e4b336.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f3c9f69-0ea5-1850-4e06-e2d0168f462b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c093c2d-b7ca-6a25-e380-0e704189e191",
  "kind": "theorem",
  "lexical_name": "addEmptyCaseSound",
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
  "slug": "addemptycasesound--dfe1dabb97ccdc6de6b2e91d",
  "source": {
    "blob": "beda50f83769020342741b70216f54ae8877c419",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LRATCheckerSound/Variant9d50b15efd1dbe1ea07a633ba3bd3f96548be793b77463123ee34b6791e4b336.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfe1dabb97ccdc6de6b2e91ddcb4cab3535da9ecf21851660230c41d4cb558c8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LRATCheckerSound/Variant9d50b15efd1dbe1ea07a633ba3bd3f96548be793b77463123ee34b6791e4b336.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c093c2d-b7ca-6a25-e380-0e704189e191`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addEmptyCaseSound [DecidableEq α] [Clause α β] [Entails α σ] [Formula α β σ] (f : σ)
    (f_readyForRupAdd : ReadyForRupAdd f) (rupHints : Array Nat)
    (rupAddSuccess : (Formula.performRupAdd f Clause.empty rupHints).snd = true) :
    Unsatisfiable α f := by
  intro p pf
  let f' := (performRupAdd f empty rupHints).1
  have f'_def : f' = Formula.insert f empty := by grind
  have f_liff_f' : Liff α f (Formula.insert f empty) := by grind
  specialize f_liff_f' p
  rw [f_liff_f', sat_iff_forall] at pf
  have empty_in_f' : empty ∈ toList (Formula.insert f empty) := by grind
  simp only [(· ⊨ ·)] at pf
  grind [Clause.eval]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LRATCheckerSound/Variant9d50b15efd1dbe1ea07a633ba3bd3f96548be793b77463123ee34b6791e4b336.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LRATCheckerSound/Variant9d50b15efd1dbe1ea07a633ba3bd3f96548be793b77463123ee34b6791e4b336.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `beda50f83769020342741b70216f54ae8877c419` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
