# Ideal.selfBasis_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ebecf4d-5f65-6509-45e1-7ffe2dd06da2",
  "kind": "theorem",
  "lexical_name": "Ideal.selfBasis_def",
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
  "slug": "ideal-selfbasis-def--acf3a31a4c0f28290298cfff",
  "source": {
    "blob": "8c284aafc68f2b9cece419f573a69894a4e43e67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 740,
    "line": 736,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantbecace604e9629b36218714d697a3abb7295b75f7dba5bd55606bf482beef2c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acf3a31a4c0f28290298cfff799a7bf5d5779d57c4068fd5309ac649a4b0e7b7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variantbecace604e9629b36218714d697a3abb7295b75f7dba5bd55606bf482beef2c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ebecf4d-5f65-6509-45e1-7ffe2dd06da2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 736–740.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.selfBasis_def (b : Basis ι R S) (I : Ideal S) (hI : I ≠ ⊥) :
    ∀ i, (Ideal.selfBasis b I hI i : S) = Ideal.smithCoeffs b I hI i • Ideal.ringBasis b I hI i :=
  (Ideal.exists_smith_normal_form b I hI).choose_spec.choose_spec.choose_spec

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variantbecace604e9629b36218714d697a3abb7295b75f7dba5bd55606bf482beef2c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variantbecace604e9629b36218714d697a3abb7295b75f7dba5bd55606bf482beef2c0.lean#L736).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c284aafc68f2b9cece419f573a69894a4e43e67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
