# ofNatWrapping

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6cabcde135a5108f5489ef5123f470f0d583bb0b8d26789c457574516f73622",
  "kind": "def",
  "lexical_name": "ofNatWrapping",
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
  "slug": "ofnatwrapping--c21d8f250897c4cb9fe702d1",
  "source": {
    "blob": "c1c9db5b02c784817e11eebfb1269073d91e661c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 115,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounded/Variant27f5ee2bcc1ed9d8892c3fe9e18008d2c81589bce1f5639185481e35b75940ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c21d8f250897c4cb9fe702d132fe899b3044622f6dc2c96172bc1af7221aeb7b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounded/Variant27f5ee2bcc1ed9d8892c3fe9e18008d2c81589bce1f5639185481e35b75940ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6cabcde135a5108f5489ef5123f470f0d583bb0b8d26789c457574516f73622`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofNatWrapping { lo hi : Int } (val : Int) (h : lo ≤ hi) : Bounded.LE lo hi := by
  let range := hi - lo + 1
  have range_pos := Int.add_pos_of_nonneg_of_pos (b := 1) (Int.sub_nonneg_of_le h) (by decide)
  have not_zero := Int.ne_iff_lt_or_gt.mpr (Or.inl range_pos)
  have mod_nonneg : 0 ≤ (val - lo) % range := Int.emod_nonneg (val - lo) not_zero.symm
  have add_nonneg : lo ≤ lo + (val - lo) % range := Int.le_add_of_nonneg_right mod_nonneg
  have mod_range : (val - lo) % (hi - lo + 1) < range := Int.emod_lt_of_pos (a := val - lo) range_pos
  refine ⟨((val - lo) % range + range) % range + lo, And.intro ?_ ?_⟩
  · simp_all [range]
    rw [Int.add_comm] at add_nonneg
    exact add_nonneg
  · apply Int.add_le_of_le_sub_right
    simp_all [range]
    exact Int.le_of_lt_add_one mod_range

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounded/Variant27f5ee2bcc1ed9d8892c3fe9e18008d2c81589bce1f5639185481e35b75940ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounded/Variant27f5ee2bcc1ed9d8892c3fe9e18008d2c81589bce1f5639185481e35b75940ae.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1c9db5b02c784817e11eebfb1269073d91e661c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
