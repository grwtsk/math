# scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c25a0662bfcc98324b19c4dfa350992634f308cb0623eb9f8952dcfcb0187c8",
  "kind": "def",
  "lexical_name": "scale",
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
  "slug": "scale--8d7adb4b8c4fe2617ff426d0",
  "source": {
    "blob": "e5a64315b8c4caa8dbcd5acb7761d9ad740f1572",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 450,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/IntervalDyadic/Variantf2994719e6a7c39faff52b965822b6e42e29c6a9260350d2835d1a3747dfd09d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d7adb4b8c4fe2617ff426d076775c690ae5942a6f9af471b7ec49bd2bb89185",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/IntervalDyadic/Variantf2994719e6a7c39faff52b965822b6e42e29c6a9260350d2835d1a3747dfd09d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c25a0662bfcc98324b19c4dfa350992634f308cb0623eb9f8952dcfcb0187c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def scale (I : IntervalDyadic) (c : Dyadic) : IntervalDyadic :=
  if hc : Dyadic.le Dyadic.zero c then
    ⟨I.lo.mul c, I.hi.mul c, by
      rw [Dyadic.toRat_mul, Dyadic.toRat_mul]
      have hcnn : 0 ≤ c.toRat := by
        have := Dyadic.le_iff_toRat_le Dyadic.zero c |>.mp hc
        have hz : Dyadic.zero.toRat = 0 := Dyadic.toRat_zero
        rw [hz] at this; exact this
      exact mul_le_mul_of_nonneg_right I.le hcnn⟩
  else
    ⟨I.hi.mul c, I.lo.mul c, by
      rw [Dyadic.toRat_mul, Dyadic.toRat_mul]
      have hcneg : c.toRat < 0 := by
        have hf := Dyadic.le_iff_toRat_le Dyadic.zero c
        have hz : Dyadic.zero.toRat = 0 := Dyadic.toRat_zero
        rw [hz] at hf
        by_contra! hge
        exact hc (hf.mpr hge)
      exact mul_le_mul_of_nonpos_right I.le (le_of_lt hcneg)⟩

/-- Scale by a power of 2 (very efficient: just adjusts exponents) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/IntervalDyadic/Variantf2994719e6a7c39faff52b965822b6e42e29c6a9260350d2835d1a3747dfd09d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/IntervalDyadic/Variantf2994719e6a7c39faff52b965822b6e42e29c6a9260350d2835d1a3747dfd09d.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5a64315b8c4caa8dbcd5acb7761d9ad740f1572` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
