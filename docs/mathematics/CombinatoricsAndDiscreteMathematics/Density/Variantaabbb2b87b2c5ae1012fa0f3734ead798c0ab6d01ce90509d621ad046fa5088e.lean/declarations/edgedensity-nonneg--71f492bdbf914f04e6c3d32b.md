# edgeDensity_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:099ff4ab-170c-3335-457b-63de3cae1d06",
  "kind": "theorem",
  "lexical_name": "edgeDensity_nonneg",
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
  "slug": "edgedensity-nonneg--71f492bdbf914f04e6c3d32b",
  "source": {
    "blob": "75bd33324cf1c9763b2101f23a150266380e18cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 133,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variantaabbb2b87b2c5ae1012fa0f3734ead798c0ab6d01ce90509d621ad046fa5088e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71f492bdbf914f04e6c3d32b8d6f9591b115a777d1118022a4519b2063d98ae4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Density/Variantaabbb2b87b2c5ae1012fa0f3734ead798c0ab6d01ce90509d621ad046fa5088e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:099ff4ab-170c-3335-457b-63de3cae1d06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edgeDensity_nonneg (s : Finset α) (t : Finset β) : 0 ≤ edgeDensity r s t := by
  apply div_nonneg <;> exact mod_cast Nat.zero_le _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Density/Variantaabbb2b87b2c5ae1012fa0f3734ead798c0ab6d01ce90509d621ad046fa5088e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variantaabbb2b87b2c5ae1012fa0f3734ead798c0ab6d01ce90509d621ad046fa5088e.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75bd33324cf1c9763b2101f23a150266380e18cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
