# SignedHomologyWordGate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92ca8d3cbaed43a4c4a7aa6b6ff575b7e35f9e52b025cb71d13b370c4b3c1ff8",
  "kind": "structure",
  "lexical_name": "SignedHomologyWordGate",
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
  "slug": "signedhomologywordgate--f6c31ce6779228fdf9e49a6d",
  "source": {
    "blob": "3d0742bcc0ccd1fbaca9043b3a7c379e7a57f6dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 78,
    "path": "GRWTSK/Analysis/Fourier/FiniteGeodesicHomologyPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6c31ce6779228fdf9e49a6d99c479197bde787a66bcf735ed0f859f165b5279",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicHomologyPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92ca8d3cbaed43a4c4a7aa6b6ff575b7e35f9e52b025cb71d13b370c4b3c1ff8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SignedHomologyWordGate
    (t : TraceShapedInput γ m)
    (Alphabet : Type*) [Fintype Alphabet]
    (L : ℕ) (B : ℝ) (G : Type*) [Group G] where
  finiteGate : BoundedWordGeometricGate t Alphabet L B
  letterValue : Alphabet → G
  sourceOfClass : ConjClasses G → Option γ
  decode_from_class : ∀ w : BoundedWord Alphabet L,
    finiteGate.decode w =
      sourceOfClass (conjugacyClassOfWord letterValue (letters w))
  functional : IntegerCharacter G
  coeff : Fin m → ℤ
  source_pairing : ∀ (w : BoundedWord Alphabet L) (a : γ),
    finiteGate.decode w = some a →
      (functional (evalWord letterValue (letters w))).toAdd =
        signedHomologyPairing coeff (t.homology a)
  accepted_unit_pairing : ∀ (w : BoundedWord Alphabet L) (a : γ),
    finiteGate.decode w = some a →
      IsUnit (signedHomologyPairing coeff (t.homology a))

/-- The arithmetic source matching and unit hypothesis yield a genuine
group-level primitive certificate for each accepted code. This is the
one missing field of the older #694 source-facing gate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicHomologyPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/FiniteGeodesicHomologyPrimitive.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d0742bcc0ccd1fbaca9043b3a7c379e7a57f6dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
