# ISize.toInt_sub_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9c7b503-157b-bf17-5e21-a8818b633eab",
  "kind": "theorem",
  "lexical_name": "ISize.toInt_sub_of_le",
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
  "slug": "isize-toint-sub-of-le--daddf771a65b159992ebee2f",
  "source": {
    "blob": "1528f65fe2dcdcedf642f719f3c603b5a68659b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3586,
    "line": 3580,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantbf4f16e9e07803dac748273f07b6767e9854b3ecdef8b3db358eb56977436e03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:daddf771a65b159992ebee2f43ef9e69043e5c7aeab08d10dedd56a5f19e34a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantbf4f16e9e07803dac748273f07b6767e9854b3ecdef8b3db358eb56977436e03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9c7b503-157b-bf17-5e21-a8818b633eab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3580–3586.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ISize.toInt_sub_of_le (a b : ISize) (hb : 0 ≤ b) (h : b ≤ a) :
    (a - b).toInt = a.toInt - b.toInt := by
  rw [ISize.toInt_eq_toNatClampNeg (ISize.sub_nonneg_of_le hb h),
    ISize.toInt_eq_toNatClampNeg (ISize.le_trans hb h), ISize.toInt_eq_toNatClampNeg hb,
    ISize.toNatClampNeg_sub_of_le hb h, Int.ofNat_sub]
  exact ISize.toNatClampNeg_le h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantbf4f16e9e07803dac748273f07b6767e9854b3ecdef8b3db358eb56977436e03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantbf4f16e9e07803dac748273f07b6767e9854b3ecdef8b3db358eb56977436e03.lean#L3580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1528f65fe2dcdcedf642f719f3c603b5a68659b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
