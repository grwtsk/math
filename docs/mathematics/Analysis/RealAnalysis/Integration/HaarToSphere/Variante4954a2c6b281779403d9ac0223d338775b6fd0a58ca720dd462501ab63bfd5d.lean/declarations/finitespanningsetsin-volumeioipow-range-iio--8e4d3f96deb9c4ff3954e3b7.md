# finiteSpanningSetsIn_volumeIoiPow_range_Iio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c740208901fa3aa19b025674dfa52d196507f70d44be2f1f80a0aec370a32dae",
  "kind": "def",
  "lexical_name": "finiteSpanningSetsIn_volumeIoiPow_range_Iio",
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
  "slug": "finitespanningsetsin-volumeioipow-range-iio--8e4d3f96deb9c4ff3954e3b7",
  "source": {
    "blob": "02354405954f6feba59092dfb320cfeb43cb3745",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e4d3f96deb9c4ff3954e3b762cb524088b9b971203657ad8d773ce2ab75377a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c740208901fa3aa19b025674dfa52d196507f70d44be2f1f80a0aec370a32dae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteSpanningSetsIn_volumeIoiPow_range_Iio (n : ℕ) :
    FiniteSpanningSetsIn (volumeIoiPow n) (range Iio) where
  set k := Iio ⟨k + 1, mem_Ioi.2 k.cast_add_one_pos⟩
  set_mem _ := mem_range_self _
  finite k := by simp [volumeIoiPow_apply_Iio]
  spanning := iUnion_eq_univ_iff.2 fun x ↦ ⟨⌊x.1⌋₊, Nat.lt_floor_add_one x.1⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02354405954f6feba59092dfb320cfeb43cb3745` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
