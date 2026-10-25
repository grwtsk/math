# ofRingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42abbec2ae890f0726123fd0f4a30b9e57d826280f040e6c43a9c76a51cda4bd",
  "kind": "def",
  "lexical_name": "ofRingEquiv",
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
  "slug": "ofringequiv--5288d425cba6d4564a0736a2",
  "source": {
    "blob": "551c7265033d2e1ede0cc884876f3b114f5e71c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 396,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant913f6c9bc8f2c9a54ac012a5bfb74c4b44a219bc4226b7e071cbcf8299ff394a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5288d425cba6d4564a0736a2af196f0789f8966cca9a1f5d4c058d0ddb983b1f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant913f6c9bc8f2c9a54ac012a5bfb74c4b44a219bc4226b7e071cbcf8299ff394a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42abbec2ae890f0726123fd0f4a30b9e57d826280f040e6c43a9c76a51cda4bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofRingEquiv (hI : DividedPowers I) : DividedPowers J where
  dpow n b := e (hI.dpow n (e.symm b))
  dpow_null hx := by
    rw [EmbeddingLike.map_eq_zero_iff, hI.dpow_null]
    rwa [symm_apply_mem_of_equiv_iff, h]
  dpow_zero hx := by
    rw [EmbeddingLike.map_eq_one_iff, hI.dpow_zero]
    rwa [symm_apply_mem_of_equiv_iff, h]
  dpow_one hx := by
    rw [dpow_one, RingEquiv.apply_symm_apply]
    rwa [I.symm_apply_mem_of_equiv_iff, h]
  dpow_mem hn hx := by
    rw [← h, I.apply_mem_of_equiv_iff]
    apply hI.dpow_mem hn
    rwa [I.symm_apply_mem_of_equiv_iff, h]
  dpow_add hx hy := by
    simp only [map_add]
    rw [hI.dpow_add (symm_apply_mem_of_equiv_iff.mpr (h ▸ hx))
        (symm_apply_mem_of_equiv_iff.mpr (h ▸ hy))]
    simp only [map_sum, map_mul]
  dpow_mul hx := by
    simp only [map_mul]
    rw [hI.dpow_mul (symm_apply_mem_of_equiv_iff.mpr (h ▸ hx))]
    rw [map_mul, map_pow]
    simp only [RingEquiv.apply_symm_apply]
  mul_dpow hx := by
    rw [← map_mul, hI.mul_dpow, map_mul]
    · simp only [map_natCast]
    · rwa [symm_apply_mem_of_equiv_iff, h]
  dpow_comp hn hx := by
    simp only [RingEquiv.symm_apply_apply]
    rw [hI.dpow_comp hn]
    · simp only [map_mul, map_natCast]
    · rwa [symm_apply_mem_of_equiv_iff, h]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant913f6c9bc8f2c9a54ac012a5bfb74c4b44a219bc4226b7e071cbcf8299ff394a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant913f6c9bc8f2c9a54ac012a5bfb74c4b44a219bc4226b7e071cbcf8299ff394a.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `551c7265033d2e1ede0cc884876f3b114f5e71c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
