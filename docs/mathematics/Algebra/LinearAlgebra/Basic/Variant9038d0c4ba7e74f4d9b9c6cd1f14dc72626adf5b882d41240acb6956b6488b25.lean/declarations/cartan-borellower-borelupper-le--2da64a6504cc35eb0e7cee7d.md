# cartan_borelLower_borelUpper_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:132850b8-54e8-bbec-3501-0e8496c52af7",
  "kind": "lemma",
  "lexical_name": "cartan_borelLower_borelUpper_le",
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
  "slug": "cartan-borellower-borelupper-le--2da64a6504cc35eb0e7cee7d",
  "source": {
    "blob": "f4c4471b0bce51b1a30d98761d0e26abfeb8b0d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 391,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2da64a6504cc35eb0e7cee7d3f37709284007ac70a9fd3acc074aeb70372bc95",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:132850b8-54e8-bbec-3501-0e8496c52af7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma cartan_borelLower_borelUpper_le :
    letI := b.isLieAbelian_cartan
    letI U := ⨆ (n : ι → ℕ) (_ : n ≠ 0), rootSpace H (∑ i, n i • (-b.baseSupp) i)
    letI V := ⨆ (n : ι → ℕ) (_ : n ≠ 0), rootSpace H (∑ i, n i • b.baseSupp i)
    ![H.toLieSubmodule, b.borelLower, b.borelUpper] ≤ ![rootSpace H 0, U, V] := by
  let := b.isLieAbelian_cartan
  intro i
  fin_cases i
  · exact toLieSubmodule_le_rootSpace_zero R L H
  · exact b.borelLower_le_biSup
  · exact b.borelUpper_le_biSup

variable [IsTorsionFree R L]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4c4471b0bce51b1a30d98761d0e26abfeb8b0d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
