# lift_card_sInf_compl_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9889f2a2-5dc2-106d-1e8e-2eddc665c0ca",
  "kind": "theorem",
  "lexical_name": "lift_card_sInf_compl_le",
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
  "slug": "lift-card-sinf-compl-le--b106a4ba3b2f32828f6b9a46",
  "source": {
    "blob": "64e97358485682fd00f0b272b24006d21d912de7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 395,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantcca96043b5c1bb2edb7fd8faabbbcf33cc3ae6a7874f0cc1834d272c60a123f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b106a4ba3b2f32828f6b9a468d1d3d01a9b3a72b24998f143be8d8d1b70b5f5d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantcca96043b5c1bb2edb7fd8faabbbcf33cc3ae6a7874f0cc1834d272c60a123f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9889f2a2-5dc2-106d-1e8e-2eddc665c0ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_card_sInf_compl_le (s : Set Ordinal.{u}) :
    Cardinal.lift.{u + 1} (sInf sᶜ).card ≤ #s := by
  rw [← mk_Iio_ordinal]
  refine mk_le_mk_of_subset fun x (hx : x < _) ↦ ?_
  rw [← not_notMem]
  exact notMem_of_lt_csInf' hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantcca96043b5c1bb2edb7fd8faabbbcf33cc3ae6a7874f0cc1834d272c60a123f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantcca96043b5c1bb2edb7fd8faabbbcf33cc3ae6a7874f0cc1834d272c60a123f1.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64e97358485682fd00f0b272b24006d21d912de7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
