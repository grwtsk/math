# Atom.blocks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4e2b4673a2984443db619d2bbca79cb505b82a213d0813392e65beaa2b64144",
  "kind": "def",
  "lexical_name": "Atom.blocks",
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
  "slug": "atom-blocks--b37eebb458cf1c42b8c2fe24",
  "source": {
    "blob": "6e7819bec6fd0989270ebd95c117cf946286f88c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 73,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticLorentzianSplitting/Variant1fdd8eb8464238f23bd71dfcafc932bc5a5f7bf09ec103d012cf02284555a094.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b37eebb458cf1c42b8c2fe24686472b3a440ece2dc0364ca0a6154f7b038115a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticLorentzianSplitting/Variant1fdd8eb8464238f23bd71dfcafc932bc5a5f7bf09ec103d012cf02284555a094.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4e2b4673a2984443db619d2bbca79cb505b82a213d0813392e65beaa2b64144`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Atom.blocks : Atom -> String
  | .globallyHyperbolicSpacetime =>
      "globally hyperbolic spacetime structure for the splitting theorem"
  | .timelikeLine =>
      "isometrically embedded timelike copy of the real line"
  | .energyCondition =>
      "strong energy condition and Ricci sign hypothesis"
  | .negativeHomogeneityPDalembert =>
      "negative-homogeneity p-dAlembert operator used by the elliptic proof"
  | .ellipticRegularization =>
      "elliptic regularization and Busemann-function regularity machinery"
  | .splittingConclusion =>
      "isometry to a product with complete nonnegative-Ricci factor"
  | .classicalSplittingTransferNotImported =>
      "transfer from external Lorentzian splitting literature to local proof authority"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticLorentzianSplitting/Variant1fdd8eb8464238f23bd71dfcafc932bc5a5f7bf09ec103d012cf02284555a094.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticLorentzianSplitting/Variant1fdd8eb8464238f23bd71dfcafc932bc5a5f7bf09ec103d012cf02284555a094.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e7819bec6fd0989270ebd95c117cf946286f88c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
