# sum'_isBase_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad3684c2-e917-f9b0-70d8-eda1d3e6a73e",
  "kind": "lemma",
  "lexical_name": "sum'_isBase_iff",
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
  "slug": "sum-isbase-iff--f65cae9e27d8eb444a3a2194",
  "source": {
    "blob": "957b2c416839fd965c1cfeb80f95267d3eb0eefb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 172,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantaca12cd1884bb1d5a8d151f363182a724b2af633b6d2fb03d2e5a5fff23b4c98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f65cae9e27d8eb444a3a2194bde8a84aa3fb49dcaa748794ab6f2237136fea50",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantaca12cd1884bb1d5a8d151f363182a724b2af633b6d2fb03d2e5a5fff23b4c98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad3684c2-e917-f9b0-70d8-eda1d3e6a73e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma sum'_isBase_iff {B} :
    (Matroid.sum' M).IsBase B ↔ ∀ i, (M i).IsBase (Prod.mk i ⁻¹' B) := by
  simp only [Matroid.sum', mapEquiv_isBase_iff, Equiv.sigmaEquivProd_symm_apply, sigma_isBase_iff]
  convert! Iff.rfl
  ext
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantaca12cd1884bb1d5a8d151f363182a724b2af633b6d2fb03d2e5a5fff23b4c98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantaca12cd1884bb1d5a8d151f363182a724b2af633b6d2fb03d2e5a5fff23b4c98.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `957b2c416839fd965c1cfeb80f95267d3eb0eefb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
