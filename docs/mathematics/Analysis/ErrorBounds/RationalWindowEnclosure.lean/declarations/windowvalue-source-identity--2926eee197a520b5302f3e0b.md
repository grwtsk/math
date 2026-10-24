# windowValue_source_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fc08cd5-311f-3c53-9456-f25e085b7e88",
  "kind": "theorem",
  "lexical_name": "windowValue_source_identity",
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
  "slug": "windowvalue-source-identity--2926eee197a520b5302f3e0b",
  "source": {
    "blob": "df6a65cf33ed8586d20420d185ddd9df5afd79d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 219,
    "path": "GRWTSK/Analysis/ErrorBounds/RationalWindowEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2926eee197a520b5302f3e0b4ffb49e5099ebe681063d8a69ef2ce6d4f071066",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/RationalWindowEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fc08cd5-311f-3c53-9456-f25e085b7e88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem windowValue_source_identity (gain : ∀ n, I (n + 1) → I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (test : ∀ n, I n → ℂ) (tail actual : ℝ) (k : ℕ)
    (sourceReadout : actual = (complexReadout (test k) (source k)).re + tail) :
    (windowValue gain (fun n p => source n p - complexGram (feature n) p) test tail k).re =
      actual - (complexReadout (test k) (complexGram (feature k))).re := by
  simpa only [windowValue, Complex.add_re, Complex.re_sum, Complex.ofReal_re,
    gramNetForcing, windowCorrection] using
    (gram_net_window_identity gain source feature test k actual tail sourceReadout).symm

/-- A sound disk for the telescope gives a source LOWER bound, not source containment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/RationalWindowEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/RationalWindowEnclosure.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df6a65cf33ed8586d20420d185ddd9df5afd79d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
