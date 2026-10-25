# decidableNF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:271d3ae1d410be83a67a83af0cb797c1642fac947a7a17db62c6bdb70d74c17a",
  "kind": "instance",
  "lexical_name": "decidableNF",
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
  "slug": "decidablenf--5c8622a70b87aeff027c43b0",
  "source": {
    "blob": "bedcc3ed05793f1be7551827d345e40153184598",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 414,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant070cb7239eecd46d74400858b5889f4b0e5b6e6f41fdcaef733b2c4b26d3d69b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c8622a70b87aeff027c43b0f22acf88ae06dc1a39b3923749f14cbb04d1a920",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant070cb7239eecd46d74400858b5889f4b0e5b6e6f41fdcaef733b2c4b26d3d69b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:271d3ae1d410be83a67a83af0cb797c1642fac947a7a17db62c6bdb70d74c17a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance decidableNF : DecidablePred NF
  | 0 => isTrue NF.zero
  | oadd e n a => by
    have := decidableNF e
    have := decidableNF a
    apply decidable_of_iff (NF e ∧ NF a ∧ TopBelow e a)
    rw [← and_congr_right fun h => @nfBelow_iff_topBelow _ h _]
    exact ⟨fun ⟨h₁, h₂⟩ => NF.oadd h₁ n h₂, fun h => ⟨h.fst, h.snd'⟩⟩
#align onote.decidable_NF ONote.decidableNF

/-- Auxiliary definition for `add` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant070cb7239eecd46d74400858b5889f4b0e5b6e6f41fdcaef733b2c4b26d3d69b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant070cb7239eecd46d74400858b5889f4b0e5b6e6f41fdcaef733b2c4b26d3d69b.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bedcc3ed05793f1be7551827d345e40153184598` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
