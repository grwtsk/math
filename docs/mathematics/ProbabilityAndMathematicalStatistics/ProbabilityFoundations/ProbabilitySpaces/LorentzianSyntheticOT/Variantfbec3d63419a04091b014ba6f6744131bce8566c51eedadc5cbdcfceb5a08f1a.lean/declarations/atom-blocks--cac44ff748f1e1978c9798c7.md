# Atom.blocks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88bcd7f15e79e1b7fbf22f8e509babb45ce7862ba58af697905185e37197a9f5",
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
  "slug": "atom-blocks--cac44ff748f1e1978c9798c7",
  "source": {
    "blob": "a49b58197fd539ed7d47d7ee56d9e066c2994472",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 71,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/LorentzianSyntheticOT/Variantfbec3d63419a04091b014ba6f6744131bce8566c51eedadc5cbdcfceb5a08f1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cac44ff748f1e1978c9798c7e3f70a89be7088bb708f4b886498851f041cfbf3",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/LorentzianSyntheticOT/Variantfbec3d63419a04091b014ba6f6744131bce8566c51eedadc5cbdcfceb5a08f1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88bcd7f15e79e1b7fbf22f8e509babb45ce7862ba58af697905185e37197a9f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Atom.blocks : Atom -> String
  | .lorentzianPrelengthSpace =>
      "Lorentzian pre-length space structure is not locally represented"
  | .causalRelation =>
      "causal relation for the Lorentzian synthetic setting is not locally defined"
  | .timeSeparation =>
      "time-separation function or predicate is not locally formalized"
  | .optimalCoupling =>
      "optimal causal coupling object is not locally represented"
  | .kantorovichDuality =>
      "Kantorovich duality theorem for the Lorentzian setting"
  | .entropyConvexity =>
      "entropy convexity along future-directed timelike geodesics of measures"
  | .syntheticTimelikeRicciBound =>
      "synthetic timelike Ricci lower-bound and dimension upper-bound statement"
  | .externalTheoremNotImported =>
      "external Lorentzian OT theorem being treated as local proof authority"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/LorentzianSyntheticOT/Variantfbec3d63419a04091b014ba6f6744131bce8566c51eedadc5cbdcfceb5a08f1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/LorentzianSyntheticOT/Variantfbec3d63419a04091b014ba6f6744131bce8566c51eedadc5cbdcfceb5a08f1a.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a49b58197fd539ed7d47d7ee56d9e066c2994472` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
