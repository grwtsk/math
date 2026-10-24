# decode_cyclicSplit_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0dd4b636-900c-b046-3cec-0c450c7efc6c",
  "kind": "theorem",
  "lexical_name": "decode_cyclicSplit_eq",
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
  "slug": "decode-cyclicsplit-eq--91ef52033ae1fd944461f52a",
  "source": {
    "blob": "ee6ff2f4fb4c85b4e28a91a9dd9a07bef80e7204",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 128,
    "path": "GRWTSK/Analysis/Fourier/FiniteGeodesicConjugacyGate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91ef52033ae1fd944461f52a9486486eeac4266cd4f0b30093fb989ae07993c7",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicConjugacyGate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dd4b636-900c-b046-3cec-0c450c7efc6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decode_cyclicSplit_eq
    [Fintype Alphabet] [Group G]
    (t : TraceShapedInput γ m)
    {B : ℝ} (g : ConjugacySoundWordGate t Alphabet L B G)
    (w₁ w₂ : BoundedWord Alphabet L) (u v : List Alphabet)
    (hw₁ : letters w₁ = u ++ v)
    (hw₂ : letters w₂ = v ++ u) :
    g.finiteGate.decode w₁ = g.finiteGate.decode w₂ := by
  have hclass :
      conjugacyClassOfWord g.letterValue (letters w₁) =
        conjugacyClassOfWord g.letterValue (letters w₂) := by
    rw [hw₁, hw₂]
    exact conjugacyClassOfWord_cyclicSplit g.letterValue u v
  calc
    g.finiteGate.decode w₁ =
        g.sourceOfClass (conjugacyClassOfWord g.letterValue (letters w₁)) :=
      g.decode_from_class w₁
    _ = g.sourceOfClass (conjugacyClassOfWord g.letterValue (letters w₂)) :=
      congrArg g.sourceOfClass hclass
    _ = g.finiteGate.decode w₂ := (g.decode_from_class w₂).symm

/-- The original #687 concrete finite coverage theorem remains
available under this strengthened group-theoretic source profile:
the group data alone do not provide a new Fourier support certificate
or discharge q-modular aliases. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicConjugacyGate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/FiniteGeodesicConjugacyGate.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee6ff2f4fb4c85b4e28a91a9dd9a07bef80e7204` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
