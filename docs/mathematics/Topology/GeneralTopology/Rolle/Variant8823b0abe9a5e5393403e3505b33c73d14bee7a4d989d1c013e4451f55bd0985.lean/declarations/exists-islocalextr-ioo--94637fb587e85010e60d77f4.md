# exists_isLocalExtr_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:668b91ad-bf2f-5dd7-cd2f-e5571c5ea8a8",
  "kind": "theorem",
  "lexical_name": "exists_isLocalExtr_Ioo",
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
  "slug": "exists-islocalextr-ioo--94637fb587e85010e60d77f4",
  "source": {
    "blob": "9fa70f1e65558232163e319aff3374f3aafd1072",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/Rolle/Variant8823b0abe9a5e5393403e3505b33c73d14bee7a4d989d1c013e4451f55bd0985.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94637fb587e85010e60d77f475e8d0f27154351f90e88004f5875ca40a699310",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Rolle/Variant8823b0abe9a5e5393403e3505b33c73d14bee7a4d989d1c013e4451f55bd0985.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:668b91ad-bf2f-5dd7-cd2f-e5571c5ea8a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isLocalExtr_Ioo (hab : a < b) (hfc : ContinuousOn f (Icc a b)) (hfI : f a = f b) :
    ∃ c ∈ Ioo a b, IsLocalExtr f c :=
  let ⟨c, cmem, hc⟩ := exists_Ioo_extr_on_Icc hab hfc hfI
  ⟨c, cmem, hc.isLocalExtr <| Icc_mem_nhds cmem.1 cmem.2⟩

/-- If a function `f` is continuous on an open interval
and tends to the same value at its endpoints, then it has an extremum on this open interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Rolle/Variant8823b0abe9a5e5393403e3505b33c73d14bee7a4d989d1c013e4451f55bd0985.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Rolle/Variant8823b0abe9a5e5393403e3505b33c73d14bee7a4d989d1c013e4451f55bd0985.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fa70f1e65558232163e319aff3374f3aafd1072` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
