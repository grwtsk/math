# hurwitzZeta_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:244d92e7-73af-ff79-4872-1743ee5d1a7c",
  "kind": "lemma",
  "lexical_name": "hurwitzZeta_one_sub",
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
  "slug": "hurwitzzeta-one-sub--6bdd215819b7cc4cfb827b1c",
  "source": {
    "blob": "95f4daf1a029b54c880665a3d4d56efd3573a93c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 161,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant3f368e6f7e98407e72f89bd546ad6bf55c84234e78f712de3c35cb7a6343c8ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bdd215819b7cc4cfb827b1c134c81aa3b0f73b894d46788624bab9970cc67b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant3f368e6f7e98407e72f89bd546ad6bf55c84234e78f712de3c35cb7a6343c8ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:244d92e7-73af-ff79-4872-1743ee5d1a7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hurwitzZeta_one_sub (a : UnitAddCircle) {s : ℂ}
    (hs : ∀ (n : ℕ), s ≠ -n) (hs' : a ≠ 0 ∨ s ≠ 1) :
    hurwitzZeta a (1 - s) = (2 * π) ^ (-s) * Gamma s *
    (exp (-π * I * s / 2) * expZeta a s + exp (π * I * s / 2) * expZeta (-a) s) := by
  rw [hurwitzZeta, hurwitzZetaEven_one_sub a hs hs', hurwitzZetaOdd_one_sub a hs,
    expZeta, expZeta, Complex.cos, Complex.sin, sinZeta_neg, cosZeta_neg]
  rw [show ↑π * I * s / 2 = ↑π * s / 2 * I by ring,
    show -↑π * I * s / 2 = -(↑π * s / 2) * I by ring]
  -- these `generalize` commands are not strictly needed for the `ring_nf` call to succeed, but
  -- make it run faster:
  generalize (2 * π : ℂ) ^ (-s) = x
  generalize (↑π * s / 2 * I).exp = y
  generalize (-(↑π * s / 2) * I).exp = z
  ring_nf

/-- Functional equation for the exponential zeta function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant3f368e6f7e98407e72f89bd546ad6bf55c84234e78f712de3c35cb7a6343c8ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant3f368e6f7e98407e72f89bd546ad6bf55c84234e78f712de3c35cb7a6343c8ce.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95f4daf1a029b54c880665a3d4d56efd3573a93c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
