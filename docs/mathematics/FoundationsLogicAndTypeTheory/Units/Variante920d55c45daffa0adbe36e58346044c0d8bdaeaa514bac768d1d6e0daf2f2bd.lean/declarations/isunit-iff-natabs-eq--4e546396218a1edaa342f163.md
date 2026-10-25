# isUnit_iff_natAbs_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd62788a793d31dd2ac2f2d2c2adc16a8c450a45",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be53ce7a-618a-4ba0-63cb-8eb81a8e0faa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e555336b-68e3-bb81-ebc0-4c9b91540e45",
  "kind": "theorem",
  "lexical_name": "isUnit_iff_natAbs_eq",
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
  "slug": "isunit-iff-natabs-eq--4e546396218a1edaa342f163",
  "source": {
    "blob": "fd62788a793d31dd2ac2f2d2c2adc16a8c450a45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e546396218a1edaa342f1631f3ed620460e08285b5b6affd0160e12f0733aa8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e555336b-68e3-bb81-ebc0-4c9b91540e45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_iff_natAbs_eq {n : ℤ} : IsUnit n ↔ n.natAbs = 1 := by
  simp [natAbs_eq_iff, isUnit_iff, Nat.cast_zero]
#align int.is_unit_iff_nat_abs_eq Int.isUnit_iff_natAbs_eq

alias ⟨IsUnit.natAbs_eq, _⟩ := isUnit_iff_natAbs_eq
#align int.is_unit.nat_abs_eq Int.IsUnit.natAbs_eq

-- Porting note: `rw` didn't work on `natAbs_ofNat`, so had to change to `simp`,
-- presumably because `(n : ℤ)` is `Nat.cast` and not just `ofNat`
@[norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Units/Variante920d55c45daffa0adbe36e58346044c0d8bdaeaa514bac768d1d6e0daf2f2bd.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd62788a793d31dd2ac2f2d2c2adc16a8c450a45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
