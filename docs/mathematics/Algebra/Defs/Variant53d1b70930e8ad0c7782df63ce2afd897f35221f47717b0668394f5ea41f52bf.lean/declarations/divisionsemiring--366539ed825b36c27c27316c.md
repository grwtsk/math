# DivisionSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d914f60511b1ffb56ec980986c5c0606a26dc09ae2d348caacc431f433ea82fe",
  "kind": "class",
  "lexical_name": "DivisionSemiring",
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
  "slug": "divisionsemiring--366539ed825b36c27c27316c",
  "source": {
    "blob": "cce6cbed90b6b948ff151b2a71cbcea72f501039",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 92,
    "path": "GRWTSK/Algebra/Defs/Variant53d1b70930e8ad0c7782df63ce2afd897f35221f47717b0668394f5ea41f52bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:366539ed825b36c27c27316ca091f8deddf5f542d9b9fec8dec2a55edf3e31ce",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant53d1b70930e8ad0c7782df63ce2afd897f35221f47717b0668394f5ea41f52bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d914f60511b1ffb56ec980986c5c0606a26dc09ae2d348caacc431f433ea82fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class DivisionSemiring (K : Type*) extends Semiring K, GroupWithZero K, NNRatCast K where
  protected nnratCast := NNRat.castRec
  /-- However `NNRat.cast` is defined, it must be propositionally equal to `a / b`.

  Do not use this lemma directly. Use `NNRat.cast_def` instead. -/
  protected nnratCast_def (q : ℚ≥0) : (NNRat.cast q : K) = q.num / q.den := by intros; rfl
  /-- Scalar multiplication by a nonnegative rational number.

  Unless there is a risk of a `Module ℚ≥0 _` instance diamond, write `nnqsmul := _`. This will set
  `nnqsmul` to `(NNRat.cast · * ·)` thanks to unification in the default proof of `nnqsmul_def`.

  Do not use directly. Instead use the `•` notation. -/
  protected nnqsmul : ℚ≥0 → K → K
  /-- However `qsmul` is defined, it must be propositionally equal to multiplication by `Rat.cast`.

  Do not use this lemma directly. Use `NNRat.smul_def` instead. -/
  protected nnqsmul_def (q : ℚ≥0) (a : K) : nnqsmul q a = NNRat.cast q * a := by intros; rfl

/-- A `DivisionRing` is a `Ring` with multiplicative inverses for nonzero elements.

An instance of `DivisionRing K` includes maps `ratCast : ℚ → K` and `qsmul : ℚ → K → K`.
Those two fields are needed to implement the `DivisionRing K → Algebra ℚ K` instance since we need
to control the specific definitions for some special cases of `K` (in particular `K = ℚ` itself).
See also note [forgetful inheritance]. Similarly, there are maps `nnratCast ℚ≥0 → K` and
`nnqsmul : ℚ≥0 → K → K` to implement the `DivisionSemiring K → Algebra ℚ≥0 K` instance.

If the division ring has positive characteristic `p`, our division by zero convention forces
`ratCast (1 / p) = 1 / 0 = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant53d1b70930e8ad0c7782df63ce2afd897f35221f47717b0668394f5ea41f52bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant53d1b70930e8ad0c7782df63ce2afd897f35221f47717b0668394f5ea41f52bf.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cce6cbed90b6b948ff151b2a71cbcea72f501039` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
