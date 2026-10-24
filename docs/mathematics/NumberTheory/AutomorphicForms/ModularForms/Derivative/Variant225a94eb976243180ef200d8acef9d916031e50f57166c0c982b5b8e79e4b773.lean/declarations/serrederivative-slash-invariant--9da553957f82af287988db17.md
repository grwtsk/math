# serreDerivative_slash_invariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29b87a62db4e57e0a71055523c1664079d0b380e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/225a94eb976243180ef200d8acef9d916031e50f57166c0c982b5b8e79e4b773.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf052397-515c-5ced-a292-108d35b3ae52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:295ac146-444b-28e3-1e20-f9698932764a",
  "kind": "theorem",
  "lexical_name": "serreDerivative_slash_invariant",
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
  "slug": "serrederivative-slash-invariant--9da553957f82af287988db17",
  "source": {
    "blob": "29b87a62db4e57e0a71055523c1664079d0b380e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 244,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Derivative/Variant225a94eb976243180ef200d8acef9d916031e50f57166c0c982b5b8e79e4b773.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9da553957f82af287988db174329906f5e9f60d59793f25d2f7e21aed7c0646d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Derivative/Variant225a94eb976243180ef200d8acef9d916031e50f57166c0c982b5b8e79e4b773.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:295ac146-444b-28e3-1e20-f9698932764a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem serreDerivative_slash_invariant {k : ℤ} {F : ℍ → ℂ} (hF : MDiff F) {γ : SL(2, ℤ)}
    (h : F ∣[k] γ = F) :
    serreDerivative k F ∣[k + 2] γ = serreDerivative k F := by
  grind [serreDerivative_slash_equivariant]

/-!
Boundedness of the normalized derivative and Serre derivative at infinity.
-/

/-- A Cauchy estimate for the normalized derivative: if `F` is holomorphic on `ℍ` and bounded by
`M` at every point with imaginary part at least `z.im / 2`, then `‖D F z‖ ≤ M / (π * z.im)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Derivative/Variant225a94eb976243180ef200d8acef9d916031e50f57166c0c982b5b8e79e4b773.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Derivative/Variant225a94eb976243180ef200d8acef9d916031e50f57166c0c982b5b8e79e4b773.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29b87a62db4e57e0a71055523c1664079d0b380e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
