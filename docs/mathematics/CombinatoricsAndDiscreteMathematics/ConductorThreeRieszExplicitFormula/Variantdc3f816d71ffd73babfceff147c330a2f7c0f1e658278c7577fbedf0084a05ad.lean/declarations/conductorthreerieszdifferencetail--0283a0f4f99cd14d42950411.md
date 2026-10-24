# conductorThreeRieszDifferenceTail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f67a9e5a18e103313cb14ff04dabf26ea1500c551f58f6da2669343b6f9ea3d5",
  "kind": "def",
  "lexical_name": "conductorThreeRieszDifferenceTail",
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
  "slug": "conductorthreerieszdifferencetail--0283a0f4f99cd14d42950411",
  "source": {
    "blob": "8d3654fb5ed424dc8659259aceeda58e4032f3e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variantdc3f816d71ffd73babfceff147c330a2f7c0f1e658278c7577fbedf0084a05ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0283a0f4f99cd14d429504117eaf72705f54776a426eb9d14fc8d8fa4f438b1c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variantdc3f816d71ffd73babfceff147c330a2f7c0f1e658278c7577fbedf0084a05ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f67a9e5a18e103313cb14ff04dabf26ea1500c551f58f6da2669343b6f9ea3d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def conductorThreeRieszDifferenceTail (x h : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ico (x + 1) (x + h + 1),
    twistedVonMangoldtThree n * (((x + h : ℕ) : ℝ) - n)

/-- Exact finite-difference identity.  It is the correct algebraic joint for
unsmoothing: the first term contains the desired sharp sum, while the second
term is a short arithmetic tail. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variantdc3f816d71ffd73babfceff147c330a2f7c0f1e658278c7577fbedf0084a05ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variantdc3f816d71ffd73babfceff147c330a2f7c0f1e658278c7577fbedf0084a05ad.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d3654fb5ed424dc8659259aceeda58e4032f3e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
