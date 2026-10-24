# instIsLocalHomValuationInteger

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38589d7ca914e5528ad283f814919525f54661cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c025401d80d213467be2cf394e232f235a4ef01fdd382bc337c26e2621330df6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5669599-ca2c-a3fa-0b79-1dd80e1d2acc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce8da2eb-8d01-ce3a-83ed-615867e26b56",
  "kind": "theorem",
  "lexical_name": "instIsLocalHomValuationInteger",
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
  "slug": "instislocalhomvaluationinteger--6141c18cb1724277113c2237",
  "source": {
    "blob": "38589d7ca914e5528ad283f814919525f54661cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 151,
    "path": "GRWTSK/Algebra/Extension/Variantc025401d80d213467be2cf394e232f235a4ef01fdd382bc337c26e2621330df6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6141c18cb1724277113c223705fbf7b50d2b155f36765ef4b9829482dcdb34ad",
  "verification": {
    "reference": "docs/verification/Algebra/Extension/Variantc025401d80d213467be2cf394e232f235a4ef01fdd382bc337c26e2621330df6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce8da2eb-8d01-ce3a-83ed-615867e26b56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem instIsLocalHomValuationInteger {S ΓS : Type*} [CommRing S]
    [LinearOrderedCommGroupWithZero ΓS]
    [Algebra R S] [IsLocalHom (algebraMap R S)] {vS : Valuation S ΓS}
    [vR.HasExtension vS] : IsLocalHom (algebraMap vR.integer vS.integer) where
  map_nonunit r hr := by
    apply (Valuation.integer.integers (v := vR)).isUnit_of_one
    · exact (isUnit_map_iff (algebraMap R S) _).mp (hr.map (algebraMap _ S))
    · apply (Valuation.integer.integers (v := vS)).one_of_isUnit at hr
      exact (val_map_eq_one_iff vR vS _).mp hr

end integer

end HasExtension

end Valuation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Extension/Variantc025401d80d213467be2cf394e232f235a4ef01fdd382bc337c26e2621330df6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Extension/Variantc025401d80d213467be2cf394e232f235a4ef01fdd382bc337c26e2621330df6.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38589d7ca914e5528ad283f814919525f54661cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
