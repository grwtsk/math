# outputAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a735cde344dfef1f4695ef3c7fc89c72c430092a125579ca9e9fbadb1a06c5a",
  "kind": "def",
  "lexical_name": "outputAt",
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
  "slug": "outputat--90ec6f1069fbdfc747c765c5",
  "source": {
    "blob": "df18e72dbdbd64822f90a7feebe982ced14e81fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 113,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90ec6f1069fbdfc747c765c50aa34d605e669fa52d39a6a116293124104f0a5a",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a735cde344dfef1f4695ef3c7fc89c72c430092a125579ca9e9fbadb1a06c5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def outputAt
    (C : FiniteModelConvolution Model Point State)
    (p : Point)
    (X : State) : ℚ :=
  C.numerator p X / C.denominator p X

/-- Every carrier point has an explicit finite overlap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df18e72dbdbd64822f90a7feebe982ced14e81fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
