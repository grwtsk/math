# complete_witness_closes_full_topos_authority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7caee20a22a50d30b20fd954122baa508192a81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12795fddcdaeb0f2c18594bc5f30dcecc2f15200011089fab03edf4875ed217d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1002907b-cb76-1a0f-f455-a0d1dd240d31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:084a1176-8778-f3c5-0fa7-874a3c7e9987",
  "kind": "theorem",
  "lexical_name": "complete_witness_closes_full_topos_authority",
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
  "slug": "complete-witness-closes-full-topos-authority--89d3e817d992effd591eb7bb",
  "source": {
    "blob": "c7caee20a22a50d30b20fd954122baa508192a81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 228,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdapterCorrespondenceTopos/Variant12795fddcdaeb0f2c18594bc5f30dcecc2f15200011089fab03edf4875ed217d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89d3e817d992effd591eb7bb25b1babf7a36efadbfaad01a9efc4271ff76f6b6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdapterCorrespondenceTopos/Variant12795fddcdaeb0f2c18594bc5f30dcecc2f15200011089fab03edf4875ed217d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:084a1176-8778-f3c5-0fa7-874a3c7e9987`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_witness_closes_full_topos_authority
    {w : AdapterCorrespondenceProofWitness}
    (h : w.complete) :
    FullToposAuthority w.closesGates := by
  rcases h with ⟨hFinite, hAt, hSheaf, hLoc, hGlue, hUnit,
    hBase, hSafe, hUpper, hSlice, hLim, hExp, hSub,
    hHom, hUniq, hCompat, hAuth, hRes, hNC, hTrain,
    hInc, hAff, hDelta, hKernel, hPos, hBypass, hRefuse⟩
  exact ⟨hFinite, ⟨hLoc, hGlue⟩, hLim, hExp, hSub,
    ⟨hHom, hUniq, hCompat, hPos⟩,
    ⟨hAuth, hRes, hNC, hTrain⟩,
    ⟨hBypass, hRefuse⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdapterCorrespondenceTopos/Variant12795fddcdaeb0f2c18594bc5f30dcecc2f15200011089fab03edf4875ed217d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdapterCorrespondenceTopos/Variant12795fddcdaeb0f2c18594bc5f30dcecc2f15200011089fab03edf4875ed217d.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7caee20a22a50d30b20fd954122baa508192a81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
