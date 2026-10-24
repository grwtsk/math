# coe_of_h_rat_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8654e9b7dfe01833f290319d3a601d48653d9ec7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ce364aa-e68d-33fc-86bc-6a7d925314e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3c4146c-9759-f43f-3011-0c4ab2ad40f2",
  "kind": "theorem",
  "lexical_name": "coe_of_h_rat_eq",
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
  "slug": "coe-of-h-rat-eq--b78cf94286f67a59e5fb030d",
  "source": {
    "blob": "8654e9b7dfe01833f290319d3a601d48653d9ec7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 209,
    "path": "GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b78cf94286f67a59e5fb030dcdfefa307604b0f775e598fdd47b6e083b70fadb",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3c4146c-9759-f43f-3011-0c4ab2ad40f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_of_h_rat_eq : (↑((of q).h : ℚ) : K) = (of v).h := by
  unfold of IntFractPair.seq1
  rw [← IntFractPair.coe_of_rat_eq v_eq_q]
  simp
#align generalized_continued_fraction.coe_of_h_rat_eq GeneralizedContinuedFraction.coe_of_h_rat_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8654e9b7dfe01833f290319d3a601d48653d9ec7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
