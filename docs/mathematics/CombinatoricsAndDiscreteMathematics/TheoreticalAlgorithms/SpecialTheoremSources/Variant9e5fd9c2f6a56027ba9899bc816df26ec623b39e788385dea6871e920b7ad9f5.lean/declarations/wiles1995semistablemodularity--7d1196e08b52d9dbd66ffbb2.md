# wiles1995SemistableModularity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3dddf6350745938f82955ca82c70e96f185f17c1d1015fa1534670455cb9cc90",
  "kind": "def",
  "lexical_name": "wiles1995SemistableModularity",
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
  "slug": "wiles1995semistablemodularity--7d1196e08b52d9dbd66ffbb2",
  "source": {
    "blob": "46857a01da9f46769cc9a1470b90bf135530b596",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 138,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpecialTheoremSources/Variant9e5fd9c2f6a56027ba9899bc816df26ec623b39e788385dea6871e920b7ad9f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d1196e08b52d9dbd66ffbb2e6d8805c9c07a455a8741634cafa0c25f3cd9e0d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpecialTheoremSources/Variant9e5fd9c2f6a56027ba9899bc816df26ec623b39e788385dea6871e920b7ad9f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3dddf6350745938f82955ca82c70e96f185f17c1d1015fa1534670455cb9cc90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def wiles1995SemistableModularity : ArithmeticTheoremSource := {
  sourceId := "wiles_1995"
  sourceKind := ArithmeticSourceKind.modularity
  theoremLabel := "Semistable modularity theorem surface"
  statementSummary := "Semistable elliptic curves over Q are modular"
  dependencyChain := ["elliptic curve over Q", "semistability", "modular form surface"]
  authorityStatus := SourceAuthorityStatus.externalTheoremNotImported
  residueAtoms := [
    "wiles.source_surface",
    "wiles.elliptic_curve_over_Q_surface",
    "wiles.semistable_predicate_surface",
    "wiles.modular_form_surface",
    "wiles.modularity_predicate_surface",
    "wiles.galois_representation_surface",
    "wiles.deformation_ring_surface",
    "wiles.hecke_algebra_surface",
    "wiles.r_equals_t_surface",
    "wiles.modularity_lifting_surface",
    "wiles.semistable_modularity.statement",
    "wiles.semistable_modularity.proof_import"
  ]
}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpecialTheoremSources/Variant9e5fd9c2f6a56027ba9899bc816df26ec623b39e788385dea6871e920b7ad9f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpecialTheoremSources/Variant9e5fd9c2f6a56027ba9899bc816df26ec623b39e788385dea6871e920b7ad9f5.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46857a01da9f46769cc9a1470b90bf135530b596` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
