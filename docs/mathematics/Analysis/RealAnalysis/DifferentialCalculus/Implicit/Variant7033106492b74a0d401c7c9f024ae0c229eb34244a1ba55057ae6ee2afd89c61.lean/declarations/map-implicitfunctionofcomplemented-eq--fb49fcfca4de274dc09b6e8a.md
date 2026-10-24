# map_implicitFunctionOfComplemented_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9041a0b914f7af8fb9453c954100493318e6a573",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/7033106492b74a0d401c7c9f024ae0c229eb34244a1ba55057ae6ee2afd89c61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2aef9df0-6c11-bb32-ea69-bac05e3d385e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:031aaa4c-bf64-9589-e23e-89378e2d3abb",
  "kind": "theorem",
  "lexical_name": "map_implicitFunctionOfComplemented_eq",
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
  "slug": "map-implicitfunctionofcomplemented-eq--fb49fcfca4de274dc09b6e8a",
  "source": {
    "blob": "9041a0b914f7af8fb9453c954100493318e6a573",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 295,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant7033106492b74a0d401c7c9f024ae0c229eb34244a1ba55057ae6ee2afd89c61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb49fcfca4de274dc09b6e8a1bd2d35811ef6c4085d2353f6960f10d838c13b8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant7033106492b74a0d401c7c9f024ae0c229eb34244a1ba55057ae6ee2afd89c61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:031aaa4c-bf64-9589-e23e-89378e2d3abb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_implicitFunctionOfComplemented_eq (hf : HasStrictFDerivAt f f' a) (hf' : range f' = ⊤)
    (hker : (ker f').ClosedComplemented) :
    ∀ᶠ p : F × ker f' in 𝓝 (f a, 0),
      f (hf.implicitFunctionOfComplemented f f' hf' hker p.1 p.2) = p.1 :=
  ((hf.implicitToPartialHomeomorphOfComplemented f f' hf' hker).eventually_right_inverse <|
        hf.mem_implicitToPartialHomeomorphOfComplemented_target hf' hker).mono
    fun ⟨_, _⟩ h => congr_arg Prod.fst h

/-- Any point in some neighborhood of `a` can be represented as
`HasStrictFDerivAt.implicitFunctionOfComplemented` of some point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant7033106492b74a0d401c7c9f024ae0c229eb34244a1ba55057ae6ee2afd89c61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant7033106492b74a0d401c7c9f024ae0c229eb34244a1ba55057ae6ee2afd89c61.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9041a0b914f7af8fb9453c954100493318e6a573` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
