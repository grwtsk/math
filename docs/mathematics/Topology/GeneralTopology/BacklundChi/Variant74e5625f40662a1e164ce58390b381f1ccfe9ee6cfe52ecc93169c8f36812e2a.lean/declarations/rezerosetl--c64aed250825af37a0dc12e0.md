# reZeroSetL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d78465c6407b52e0d8c9025bc499b9ff40dc05b9678a94315b3fc895151f9701",
  "kind": "def",
  "lexical_name": "reZeroSetL",
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
  "slug": "rezerosetl--c64aed250825af37a0dc12e0",
  "source": {
    "blob": "3e9a7b0ff894a2eec2d58f7cd0fc09a7c51e9738",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 28,
    "path": "GRWTSK/Topology/GeneralTopology/BacklundChi/Variant74e5625f40662a1e164ce58390b381f1ccfe9ee6cfe52ecc93169c8f36812e2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c64aed250825af37a0dc12e005047fa991393c5287d01b8f585f5168f8beda4b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BacklundChi/Variant74e5625f40662a1e164ce58390b381f1ccfe9ee6cfe52ecc93169c8f36812e2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d78465c6407b52e0d8c9025bc499b9ff40dc05b9678a94315b3fc895151f9701`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reZeroSetL (χ : DirichletCharacter ℂ q) (T : ℝ) : Set ℝ :=
  {σ | σ ∈ Set.Icc (1/2 : ℝ) 2 ∧ (χ.LFunction (σ + T * I)).re = 0}

/-! ## The horizontal side, calculus half: variation of the argument

Fix a height `T ≠ 0` with `ζ ≠ 0` on the segment `[1/2, 2] + iT`.  If `Re ζ(σ+iT)` has no zero on an
open subinterval `(u,v)`, it has constant sign `ε` there (IVT), `log(ε ζ(σ+iT))` is a primitive of
`ζ'/ζ(σ+iT)` on `[u,v]` (at the endpoints `ε ζ` is `≥ 0` in real part and `≠ 0`, so still in the
slit plane), hence `|Im ∫_u^v ζ'/ζ| ≤ 2π`.  Splitting `[1/2,2]` at the finitely many zeros of
`Re ζ(σ+iT)` (the set `reZeroSetL χ T`, counted by the Jensen bound `reZeroSet_card_le`) gives
`|Im ∫_{1/2}^{2} ζ'/ζ(σ+iT) dσ| ≤ 2π (#reZeroSetL χ T + 1)` — by induction on the number of zeros inside
the interval (no sorting needed). -/

section Variation

variable {T : ℝ}

/-- `σ ↦ ζ(σ+iT)` has derivative `ζ'(σ+iT)` in the real variable `σ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BacklundChi/Variant74e5625f40662a1e164ce58390b381f1ccfe9ee6cfe52ecc93169c8f36812e2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BacklundChi/Variant74e5625f40662a1e164ce58390b381f1ccfe9ee6cfe52ecc93169c8f36812e2a.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e9a7b0ff894a2eec2d58f7cd0fc09a7c51e9738` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
