# powerPermutation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a908685eaa7533e234f5729ad5ed648a10da2c7f6e86b13b3b368f7b4506bba",
  "kind": "def",
  "lexical_name": "powerPermutation",
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
  "slug": "powerpermutation--7c253c8130305d98cacd9a27",
  "source": {
    "blob": "d8565028b7dd9b05faef3bdb2003a8e029ea3d2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 148,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c253c8130305d98cacd9a27599e380dc650b8970f4d737c8416879838e70bc8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a908685eaa7533e234f5729ad5ed648a10da2c7f6e86b13b3b368f7b4506bba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def powerPermutation
    (d : Nat)
    (hd_pos : 0 < d)
    (hd : Nat.Coprime d (Fintype.card F - 1)) :
    F ≃ F :=
  Equiv.ofBijective (fun x : F => x ^ d)
    (powerMap_bijective d hd_pos hd)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8565028b7dd9b05faef3bdb2003a8e029ea3d2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
