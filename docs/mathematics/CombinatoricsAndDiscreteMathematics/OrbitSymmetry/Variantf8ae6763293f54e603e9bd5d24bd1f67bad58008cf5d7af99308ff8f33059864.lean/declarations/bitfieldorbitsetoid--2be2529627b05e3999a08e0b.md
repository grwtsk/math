# bitfieldOrbitSetoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e45ec30b105b1b144afccddc9440d7de14a76cb4541fecded250c7d085187e75",
  "kind": "def",
  "lexical_name": "bitfieldOrbitSetoid",
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
  "slug": "bitfieldorbitsetoid--2be2529627b05e3999a08e0b",
  "source": {
    "blob": "2053830b5ccdc9cb3eb498ddab86945c58d262b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 67,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrbitSymmetry/Variantf8ae6763293f54e603e9bd5d24bd1f67bad58008cf5d7af99308ff8f33059864.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2be2529627b05e3999a08e0bc9289bae0ff4023aa243e83b365f14ebcf4ebc80",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrbitSymmetry/Variantf8ae6763293f54e603e9bd5d24bd1f67bad58008cf5d7af99308ff8f33059864.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e45ec30b105b1b144afccddc9440d7de14a76cb4541fecded250c7d085187e75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bitfieldOrbitSetoid
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system) :
    Setoid (Bitfield system.bits) where
  r := OrbitEquivalent model
  iseqv := by
    constructor
    · intro state
      exact ⟨1, model.action.identity state⟩
    · intro left right related
      rcases related with
        ⟨automorphism, transformed⟩
      refine ⟨automorphism⁻¹, ?_⟩
      rw [← transformed,
        ← model.action.compatible,
        inv_mul,
        model.action.identity]
    · intro first second third
        firstRelated secondRelated
      rcases firstRelated with
        ⟨firstAutomorphism, firstTransformed⟩
      rcases secondRelated with
        ⟨secondAutomorphism, secondTransformed⟩
      refine
        ⟨secondAutomorphism * firstAutomorphism, ?_⟩
      rw [model.action.compatible,
        firstTransformed,
        secondTransformed]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrbitSymmetry/Variantf8ae6763293f54e603e9bd5d24bd1f67bad58008cf5d7af99308ff8f33059864.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrbitSymmetry/Variantf8ae6763293f54e603e9bd5d24bd1f67bad58008cf5d7af99308ff8f33059864.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2053830b5ccdc9cb3eb498ddab86945c58d262b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
