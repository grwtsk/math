# conductorThreeVaughanRightSecondMoment_le_harmonic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66597b51-f388-f0bd-60a7-c28047b2c685",
  "kind": "theorem",
  "lexical_name": "conductorThreeVaughanRightSecondMoment_le_harmonic",
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
  "slug": "conductorthreevaughanrightsecondmoment-le-harmonic--2384a41ae0d81a6665dfe404",
  "source": {
    "blob": "bb704e4cb8d452dcc02a556cf3768cebaa1b10eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 257,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightSecondMoment/Variant71d936aeeb9b5f820e43dd966c81b73d35c066effa2d246b8f35c34ec1235def.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2384a41ae0d81a6665dfe40430f027bcedfe2cbfd903e2eb95af1a76142c8f80",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightSecondMoment/Variant71d936aeeb9b5f820e43dd966c81b73d35c066effa2d246b8f35c34ec1235def.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66597b51-f388-f0bd-60a7-c28047b2c685`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreeVaughanRightSecondMoment_le_harmonic
    (V X : ℕ) :
    conductorThreeVaughanRightSecondMoment V X ≤
      (V : ℝ) * (X : ℝ) * (harmonic V : ℝ) :=
  (conductorThreeVaughanRightSecondMoment_le_lcmEnvelope V X).trans
    (truncatedDivisorLcmEnvelope_le_harmonic V X)

/-! ## Theorem-audit boundary

The unconditional exported chain ends at
`conductorThreeVaughanRightSecondMoment_le_harmonic`:

1. `sum_truncatedDivisorCountReal_sq_eq_lcmEnvelope` is an exact finite
   lcm identity;
2. `conductorThreeVaughanRightSecondMoment_le_lcmEnvelope` compares the
   actual signed coefficient to that unsigned envelope;
3. `truncatedDivisorLcmEnvelope_le_harmonic` uses only
   `lcm d e ≥ e`, and therefore retains the factor `V`.

Removing that factor requires a separate, sharper gcd/lcm divisor-sum
estimate.  Such an estimate is not available in the Mathlib snapshot used
here and is not implied by the finite identities above.  Accordingly this
layer declares only the following proposition and no local theorem,
instance, structure field, or axiom producing it.  The downstream canonical
module `ConductorThreeVaughanRightHarmonicCube` supplies the separate finite
gcd/lcm reindex and inhabits it with constant `1`.
-/

/-- Sharpening the double lcm sum to a polylogarithmic envelope is a
separate elementary-number-theory obligation at this layer.  It is recorded
as a proposition rather than assumed; the downstream harmonic-cube module
proves it. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightSecondMoment/Variant71d936aeeb9b5f820e43dd966c81b73d35c066effa2d246b8f35c34ec1235def.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightSecondMoment/Variant71d936aeeb9b5f820e43dd966c81b73d35c066effa2d246b8f35c34ec1235def.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb704e4cb8d452dcc02a556cf3768cebaa1b10eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
