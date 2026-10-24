# bounded_word_trace_error_le_alias

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e61dfb6-7341-fd56-e8ba-b3f2e0e864f9",
  "kind": "theorem",
  "lexical_name": "bounded_word_trace_error_le_alias",
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
  "slug": "bounded-word-trace-error-le-alias--b1aedb7a1867780b90eed3d9",
  "source": {
    "blob": "06f01824740e0443e75a125e76e755c34dd610ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 197,
    "path": "GRWTSK/Analysis/Fourier/FiniteGeodesicWordCover.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1aedb7a1867780b90eed3d970badd10b91c049d4ea916381bf30631a3ed8c60",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicWordCover.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e61dfb6-7341-fd56-e8ba-b3f2e0e864f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bounded_word_trace_error_le_alias
    [Fintype Alphabet] (t : TraceShapedInput γ m)
    {B : ℝ} (g : BoundedWordGeometricGate t Alphabet L B)
    (c : FiniteFourierSupportCertificate (selectedInput t g))
    (hB : c.radius = B)
    (q : ℕ) [NeZero q] {K M : ℕ} (hKM : K ≤ M)
    (hK : AdmissibleCutoff (selectedInput t g) c K) :
    ‖torsionProjection q (tracePacket (selectedInput t g) K) -
      integralProjection (tracePacket
        (fullInput (selectedInput t g) (originalUniverse t g)) M)‖ ≤
      aliasMass q (tracePacket (selectedInput t g) K) := by
  have hcover : CoversContributingCandidates (selectedInput t g)
      (originalUniverse t g) c.radius := by
    rw [hB]
    exact decodedCandidates_cover_short_sources t g
  exact finite_full_universe_error_le_alias_of_support
    (selectedInput t g) (originalUniverse t g) c q hKM hK hcover

/-- A total rejection decoder is incompatible with the promised
source-encoding/round-trip condition whenever even one short source
exists in the supplied universe. Vacuous empty-short-range cases are
still allowed and must not be called an accepted geometric enumeration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicWordCover.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/FiniteGeodesicWordCover.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06f01824740e0443e75a125e76e755c34dd610ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
