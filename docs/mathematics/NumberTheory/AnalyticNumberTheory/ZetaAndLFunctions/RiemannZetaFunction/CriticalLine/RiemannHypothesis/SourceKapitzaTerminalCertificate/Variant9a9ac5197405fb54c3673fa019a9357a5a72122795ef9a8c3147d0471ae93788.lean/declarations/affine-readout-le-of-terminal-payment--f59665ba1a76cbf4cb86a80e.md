# affine_readout_le_of_terminal_payment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e1ccb9d-61f5-3d2c-bc41-7ac408d520ca",
  "kind": "theorem",
  "lexical_name": "affine_readout_le_of_terminal_payment",
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
  "slug": "affine-readout-le-of-terminal-payment--f59665ba1a76cbf4cb86a80e",
  "source": {
    "blob": "d93e7caee4ab3976171e18399d25ac871bb57cce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaTerminalCertificate/Variant9a9ac5197405fb54c3673fa019a9357a5a72122795ef9a8c3147d0471ae93788.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f59665ba1a76cbf4cb86a80e1a03d239bf69b65b8d31d1649f6cfed4bfb0d9e0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaTerminalCertificate/Variant9a9ac5197405fb54c3673fa019a9357a5a72122795ef9a8c3147d0471ae93788.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e1ccb9d-61f5-3d2c-bc41-7ac408d520ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affine_readout_le_of_terminal_payment (z alpha beta a b e : ℕ → ℝ)
    (S : ℕ → ℝ → ℝ) (N : ℕ) (B : ℝ)
    (hrec : ∀ j < N, z (j + 1) = alpha j * z j + beta j)
    (hlocal : ∀ j < N,
      a j * z j + b j + S (j + 1) (alpha j * z j + beta j) - S j (z j) ≤ e j)
    (hpayment : S 0 (z 0) - S N (z N) + ∑ j ∈ Finset.range N, e j ≤ B) :
    (∑ j ∈ Finset.range N, (a j * z j + b j)) ≤ B :=
  (affine_terminal_subaction z alpha beta a b e S N hrec hlocal).trans hpayment

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaTerminalCertificate/Variant9a9ac5197405fb54c3673fa019a9357a5a72122795ef9a8c3147d0471ae93788.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaTerminalCertificate/Variant9a9ac5197405fb54c3673fa019a9357a5a72122795ef9a8c3147d0471ae93788.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d93e7caee4ab3976171e18399d25ac871bb57cce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
