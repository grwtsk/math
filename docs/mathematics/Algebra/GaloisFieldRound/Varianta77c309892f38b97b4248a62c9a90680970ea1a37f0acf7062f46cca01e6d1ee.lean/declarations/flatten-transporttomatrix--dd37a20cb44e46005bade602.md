# flatten_transportToMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95b399593217b321fe2654386f10f351d6731b27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:878a113a-346a-7f68-db38-2d464ee0d82e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65fe465e-00ba-7507-f2ae-18e9a04bd3bb",
  "kind": "theorem",
  "lexical_name": "flatten_transportToMatrix",
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
  "slug": "flatten-transporttomatrix--dd37a20cb44e46005bade602",
  "source": {
    "blob": "95b399593217b321fe2654386f10f351d6731b27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 72,
    "path": "GRWTSK/Algebra/GaloisFieldRound/Varianta77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd37a20cb44e46005bade602dfcdb40156e40df3d37cf71228235c1a0e2d5b6c",
  "verification": {
    "reference": "docs/verification/Algebra/GaloisFieldRound/Varianta77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65fe465e-00ba-7507-f2ae-18e9a04bd3bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem flatten_transportToMatrix
    (E : BinMatFieldEncoding F m n)
    (R : F ≃ F)
    (A : BinMat m n) :
    flattenEquiv m n (transportToMatrix E R A) =
      FiniteFieldRound.transportToBits E.bitCode R
        (flattenEquiv m n A) := by
  simp [transportToMatrix, BinMatFieldEncoding.bitCode,
    FiniteFieldRound.transportToBits]

/-- Transport a structurally bijective finite-field round to binary matrices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaloisFieldRound/Varianta77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaloisFieldRound/Varianta77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95b399593217b321fe2654386f10f351d6731b27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
