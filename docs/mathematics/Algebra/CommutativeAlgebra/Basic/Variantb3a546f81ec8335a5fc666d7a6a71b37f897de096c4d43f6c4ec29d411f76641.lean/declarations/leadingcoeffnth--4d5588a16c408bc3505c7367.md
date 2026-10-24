# leadingCoeffNth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4353c14b8d55a855773ce484658d200625d6acd0ab061989528cbd20a9063d17",
  "kind": "def",
  "lexical_name": "leadingCoeffNth",
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
  "slug": "leadingcoeffnth--4d5588a16c408bc3505c7367",
  "source": {
    "blob": "7ffde01d3a5a9bb39a1f211aa5d6f483aad93072",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 491,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantb3a546f81ec8335a5fc666d7a6a71b37f897de096c4d43f6c4ec29d411f76641.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d5588a16c408bc3505c7367df264e3495788be96ce34dfeda9f2011b0275819",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantb3a546f81ec8335a5fc666d7a6a71b37f897de096c4d43f6c4ec29d411f76641.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4353c14b8d55a855773ce484658d200625d6acd0ab061989528cbd20a9063d17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leadingCoeffNth (n : ℕ) : Ideal R :=
  (I.degreeLE n).map <| lcoeff R n

/-- Given an ideal `I` in `R[X]`, make the ideal in `R` of the
leading coefficients in `I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantb3a546f81ec8335a5fc666d7a6a71b37f897de096c4d43f6c4ec29d411f76641.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantb3a546f81ec8335a5fc666d7a6a71b37f897de096c4d43f6c4ec29d411f76641.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ffde01d3a5a9bb39a1f211aa5d6f483aad93072` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
