# parityHalfResidue_injective_of_half_lt_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20675e63-5d8c-469e-9b07-24f96cd5fdd0",
  "kind": "theorem",
  "lexical_name": "parityHalfResidue_injective_of_half_lt_square",
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
  "slug": "parityhalfresidue-injective-of-half-lt-square--34fede0bbfaacbc8c81f73ca",
  "source": {
    "blob": "1d1ec38cf19de026fec5a6303c686037851a750f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 139,
    "path": "GRWTSK/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34fede0bbfaacbc8c81f73caf41c887de12548fb8fb08192ded05eddebc3229c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20675e63-5d8c-469e-9b07-24f96cd5fdd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityHalfResidue_injective_of_half_lt_square
    (b d r : ℕ) [NeZero d]
    (_hr : r < 2)
    (hq : b / 2 < d * d) :
    Set.InjOn
      (fun u : ℕ => ((u / 2 : ℕ) : ZMod (d * d)))
      (endpointParitySet b r : Set ℕ) := by
  intro u hu v hv huv
  rcases Finset.mem_filter.mp hu with ⟨huI, huParity⟩
  rcases Finset.mem_filter.mp hv with ⟨hvI, hvParity⟩
  have huI := Finset.mem_Icc.mp huI
  have hvI := Finset.mem_Icc.mp hvI
  have huHalf : u / 2 < d * d :=
    (Nat.div_le_div_right huI.2).trans_lt hq
  have hvHalf : v / 2 < d * d :=
    (Nat.div_le_div_right hvI.2).trans_lt hq
  have hval := congrArg ZMod.val huv
  rw [ZMod.val_natCast_of_lt huHalf,
    ZMod.val_natCast_of_lt hvHalf] at hval
  have huDecomp : 2 * (u / 2) + r = u := by
    omega
  have hvDecomp : 2 * (v / 2) + r = v := by
    omega
  omega

/-- Generic singleton-fibre square identity for an injective finite residue
map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d1ec38cf19de026fec5a6303c686037851a750f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
