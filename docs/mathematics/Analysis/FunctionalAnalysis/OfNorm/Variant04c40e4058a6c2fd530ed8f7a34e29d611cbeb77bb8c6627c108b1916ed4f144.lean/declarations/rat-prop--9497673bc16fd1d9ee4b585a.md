# rat_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14394604-7e4d-17ef-ef72-851cf542fcf6",
  "kind": "theorem",
  "lexical_name": "rat_prop",
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
  "slug": "rat-prop--9497673bc16fd1d9ee4b585a",
  "source": {
    "blob": "e0737427d2d7033129860dc943054961181a4c05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 278,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9497673bc16fd1d9ee4b585a1e1f31015a67dd7020d3b3f117e136709e88e629",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14394604-7e4d-17ef-ef72-851cf542fcf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem rat_prop (r : ℚ) : innerProp' E (r : 𝕜) := by
  intro x y
  have : (r.den : 𝕜) ≠ 0 := by
    haveI : CharZero 𝕜 := IsROrC.charZero_isROrC
    exact_mod_cast r.pos.ne'
  rw [← r.num_div_den, ← mul_right_inj' this, ← nat r.den _ y, smul_smul, Rat.cast_div]
  simp only [map_natCast, Rat.cast_coe_nat, map_intCast, Rat.cast_coe_int, map_div₀]
  rw [← mul_assoc, mul_div_cancel' _ this, int_prop _ x, map_intCast]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0737427d2d7033129860dc943054961181a4c05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
