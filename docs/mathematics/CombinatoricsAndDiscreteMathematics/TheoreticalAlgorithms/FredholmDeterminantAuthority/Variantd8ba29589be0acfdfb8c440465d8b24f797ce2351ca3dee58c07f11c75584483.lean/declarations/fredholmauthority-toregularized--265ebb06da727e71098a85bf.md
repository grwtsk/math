# FredholmAuthority.toRegularized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5dba17fca7ed22fa25c47412bdabee80163751af737f425d2e4ac2aed7a16bcc",
  "kind": "def",
  "lexical_name": "FredholmAuthority.toRegularized",
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
  "slug": "fredholmauthority-toregularized--265ebb06da727e71098a85bf",
  "source": {
    "blob": "6e1f2e5676f48f514c45e89b3e5775415cf0856c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 209,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmDeterminantAuthority/Variantd8ba29589be0acfdfb8c440465d8b24f797ce2351ca3dee58c07f11c75584483.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:265ebb06da727e71098a85bf07833dc21f3d41320a5332d3cd1107b02b986774",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmDeterminantAuthority/Variantd8ba29589be0acfdfb8c440465d8b24f797ce2351ca3dee58c07f11c75584483.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5dba17fca7ed22fa25c47412bdabee80163751af737f425d2e4ac2aed7a16bcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FredholmAuthority.toRegularized
    (A : FredholmAuthority) :
    ArithmeticAuthorities.RegularizedDeterminantAuthority where
  label := A.determinantLabel
  operatorLabel := A.operator.label
  determinantCoeffs := A.series.determinantCoeffs
  relativeDeterminantCoeffs := A.series.determinantCoeffs
  determinantDefined := A.determinantDefined
  determinantDefinedProof := A.determinantDefinedProof
  regularizationSound := A.fredholmRegularizationSound
  regularizationSoundProof := A.fredholmRegularizationSoundProof
  finiteApproximationSound := A.finiteApproximationSound
  finiteApproximationSoundProof := A.finiteApproximationSoundProof
  errorBoundSound := A.error.boundSound
  errorBoundSoundProof := A.error.boundSoundProof
  compatibleWithSpectralTriple := A.operator.compatibleWithSpectralTriple
  compatibleWithSpectralTripleProof :=
    A.operator.compatibleWithSpectralTripleProof
  compatibleWithPrismaticTrace := A.operator.compatibleWithPrismaticTrace
  compatibleWithPrismaticTraceProof :=
    A.operator.compatibleWithPrismaticTraceProof

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmDeterminantAuthority/Variantd8ba29589be0acfdfb8c440465d8b24f797ce2351ca3dee58c07f11c75584483.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmDeterminantAuthority/Variantd8ba29589be0acfdfb8c440465d8b24f797ce2351ca3dee58c07f11c75584483.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e1f2e5676f48f514c45e89b3e5775415cf0856c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
