# residueGCD_eq_one_iff_isUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4cb61d8-8445-19a3-13d1-9624a59bb3c9",
  "kind": "theorem",
  "lexical_name": "residueGCD_eq_one_iff_isUnit",
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
  "slug": "residuegcd-eq-one-iff-isunit--2e88da530dd006efd4212567",
  "source": {
    "blob": "f4df2cbea5643fb95614ac2ed9b19ed9daaac428",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 77,
    "path": "GRWTSK/NumberTheory/Farey/FareyResidueChannelDecomposition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e88da530dd006efd42125671c82bdffcb79a5f54ed4aba504dc48036f15fe6f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4cb61d8-8445-19a3-13d1-9624a59bb3c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residueGCD_eq_one_iff_isUnit (q : ℕ) [NeZero q] (x : ZMod q) :
    residueGCD q x = 1 ↔ IsUnit x := by
  constructor
  · intro h
    have hc : Nat.Coprime x.val q := by
      rw [Nat.coprime_iff_gcd_eq_one]
      simpa only [residueGCD] using h
    have hcast : IsUnit (x.val : ZMod q) :=
      (ZMod.isUnit_iff_coprime x.val q).2 hc
    simpa only [ZMod.natCast_zmod_val] using hcast
  · rintro ⟨u, rfl⟩
    simpa only [residueGCD] using
      (Nat.coprime_iff_gcd_eq_one.mp (ZMod.val_coe_unit_coprime u))

/-- The part of a signal supported on the exact gcd stratum d. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/FareyResidueChannelDecomposition.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4df2cbea5643fb95614ac2ed9b19ed9daaac428` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
