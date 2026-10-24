# support_squarefree_even_factor_count_coeff_plus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c6230a5-ca84-7b10-129b-eec50058425d",
  "kind": "theorem",
  "lexical_name": "support_squarefree_even_factor_count_coeff_plus",
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
  "slug": "support-squarefree-even-factor-count-coeff-plus--d467ad359954b0a0a3960ab0",
  "source": {
    "blob": "382b79d9864c91f83105aee87e77969092390188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 154,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Varianta88ecf8a424537da141aa97f94aac558a39dc17c65be751dc7afaebfd9c76960.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d467ad359954b0a0a3960ab09ec6c417880fdb132d3af5f38599a0d5d12da9cc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Varianta88ecf8a424537da141aa97f94aac558a39dc17c65be751dc7afaebfd9c76960.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c6230a5-ca84-7b10-129b-eec50058425d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_squarefree_even_factor_count_coeff_plus
    (support : SquarefreeSupport)
    (hWindow : support.primeFactorsInWindow = true)
    (hSquarefree : support.squarefree = true)
    (hEven : support.factorCount % 2 = 0) :
    finiteMobiusCoefficientFromSupport support =
      FiniteMobiusCoefficient.plusOne := by
  simp
    [ finiteMobiusCoefficientFromSupport
    , coefficientFromFactorCount
    , hWindow
    , hSquarefree
    , hEven
    ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Varianta88ecf8a424537da141aa97f94aac558a39dc17c65be751dc7afaebfd9c76960.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Varianta88ecf8a424537da141aa97f94aac558a39dc17c65be751dc7afaebfd9c76960.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `382b79d9864c91f83105aee87e77969092390188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
