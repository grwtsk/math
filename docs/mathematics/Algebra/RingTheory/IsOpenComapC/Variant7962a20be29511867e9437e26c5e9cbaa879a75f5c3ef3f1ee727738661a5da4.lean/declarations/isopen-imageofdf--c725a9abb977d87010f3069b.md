# isOpen_imageOfDf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec694a8273fb3ac1a8fa00c65c83d8a46bce2f4a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/7962a20be29511867e9437e26c5e9cbaa879a75f5c3ef3f1ee727738661a5da4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3525d134-45a1-336c-404a-7825fdb23cb3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2af030bf-ddf7-50c4-1829-7ac01187c86a",
  "kind": "theorem",
  "lexical_name": "isOpen_imageOfDf",
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
  "slug": "isopen-imageofdf--c725a9abb977d87010f3069b",
  "source": {
    "blob": "ec694a8273fb3ac1a8fa00c65c83d8a46bce2f4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 34,
    "path": "GRWTSK/Algebra/RingTheory/IsOpenComapC/Variant7962a20be29511867e9437e26c5e9cbaa879a75f5c3ef3f1ee727738661a5da4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c725a9abb977d87010f3069bd04ae8bcf2e4141e7c59ecaab1b865f415beb2ee",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/IsOpenComapC/Variant7962a20be29511867e9437e26c5e9cbaa879a75f5c3ef3f1ee727738661a5da4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2af030bf-ddf7-50c4-1829-7ac01187c86a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpen_imageOfDf : IsOpen (imageOfDf f) := by
  rw [imageOfDf, setOf_exists fun i (x : PrimeSpectrum R) => coeff f i ∉ x.asIdeal]
  exact isOpen_iUnion fun i => isOpen_basicOpen

/-- If a point of `Spec R[x]` is not contained in the vanishing set of `f`, then its image in
`Spec R` is contained in the open set where at least one of the coefficients of `f` is non-zero.
This lemma is a reformulation of `exists_C_coeff_notMem`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/IsOpenComapC/Variant7962a20be29511867e9437e26c5e9cbaa879a75f5c3ef3f1ee727738661a5da4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/IsOpenComapC/Variant7962a20be29511867e9437e26c5e9cbaa879a75f5c3ef3f1ee727738661a5da4.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec694a8273fb3ac1a8fa00c65c83d8a46bce2f4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
