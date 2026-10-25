# iSup_eq_bsup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d85321a-f09a-06fe-8e49-426ed214334e",
  "kind": "theorem",
  "lexical_name": "iSup_eq_bsup",
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
  "slug": "isup-eq-bsup--c56b5d6ac86ea7cd10ce7338",
  "source": {
    "blob": "64e97358485682fd00f0b272b24006d21d912de7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 581,
    "line": 571,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantcca96043b5c1bb2edb7fd8faabbbcf33cc3ae6a7874f0cc1834d272c60a123f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c56b5d6ac86ea7cd10ce7338de863c8862678d1feafd23fb5bb3ed5b0f90567c",
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

Occurrence: `result:7d85321a-f09a-06fe-8e49-426ed214334e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 571–581.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_eq_bsup {o} {f : ∀ a < o, Ordinal} : ⨆ a : Iio o, f a.1 a.2 = bsup o f := by
  simp_rw [Iio, bsup, sup, iSup, range_familyOfBFamily, brange, range, Subtype.exists, mem_setOf]

end bsup

-- TODO: bring the lsub API in line with the sSup / iSup API, or deprecate it altogether.

section lsub

set_option linter.deprecated false in
/-- The least strict upper bound of a family of ordinals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantcca96043b5c1bb2edb7fd8faabbbcf33cc3ae6a7874f0cc1834d272c60a123f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantcca96043b5c1bb2edb7fd8faabbbcf33cc3ae6a7874f0cc1834d272c60a123f1.lean#L571).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64e97358485682fd00f0b272b24006d21d912de7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
