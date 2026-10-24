# contract_expandWithShell_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f4546ac4d33bbc4b7551d40378219850d93965a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0577b4f4-008f-ec3a-ccfa-f412f7545c82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75c5ac47-faac-c5f0-2153-e8861c1616b4",
  "kind": "theorem",
  "lexical_name": "contract_expandWithShell_center",
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
  "slug": "contract-expandwithshell-center--e0bce291b5e30d0a44eb3333",
  "source": {
    "blob": "1f4546ac4d33bbc4b7551d40378219850d93965a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 78,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0bce291b5e30d0a44eb3333068c3089905de8192f4ad47654c74de24350ece8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75c5ac47-faac-c5f0-2153-e8861c1616b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contract_expandWithShell_center
    (base : GridShape)
    (k : Nat)
    {n : Nat}
    (P : ShapeStepPayload base k n)
    (X : ShapeChangingState base k n) :
    (contractOneStep base k (expandWithShell base k P X)).1 = X := by
  unfold contractOneStep expandWithShell
  change
    ({ visible :=
        (Spectral.encodeShell
          (Spectral.decodeShell
            ({ center := X.visible, shell := P.shell } :
              Spectral.SpectralShellEncoded (levelShape base n) k))).center } :
      ShapeChangingState base k n) = X
  rw [Spectral.encode_decode_shell]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f4546ac4d33bbc4b7551d40378219850d93965a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
