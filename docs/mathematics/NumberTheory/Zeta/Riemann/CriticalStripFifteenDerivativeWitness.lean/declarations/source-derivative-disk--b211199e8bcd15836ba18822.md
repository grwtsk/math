# source_derivative_disk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4dd7e42-5d2a-0754-7861-d60775d7ab1b",
  "kind": "theorem",
  "lexical_name": "source_derivative_disk",
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
  "slug": "source-derivative-disk--b211199e8bcd15836ba18822",
  "source": {
    "blob": "e55acee66012f2b39be7c88cbebdf6a34bc3bfd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 40,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b211199e8bcd15836ba188229f6a17fff00bfddedc8becd0c36953d495effccd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4dd7e42-5d2a-0754-7861-d60775d7ab1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_derivative_disk {s : ℂ} (hs : s ∈ domain) :
    ‖deriv poleNormalizedZeta s-linearPart‖ ≤ (12 : ℝ) := by
  have ht := derivative_source_error hs
  have hf := Jet.finite_derivative_enclosure hs
  have hm := Certificate.model_disk hs
  have h1 : ‖deriv poleNormalizedZeta s-linearPart‖ ≤
      ‖deriv poleNormalizedZeta s-exactDerivative s‖+‖exactDerivative s-linearPart‖ := by
    convert norm_add_le (deriv poleNormalizedZeta s-exactDerivative s)
      (exactDerivative s-linearPart) using 1 <;> ring
  have h2 : ‖exactDerivative s-linearPart‖ ≤
      ‖exactDerivative s-Jet.model s‖+‖Jet.model s-linearPart‖ := by
    convert norm_add_le (exactDerivative s-Jet.model s) (Jet.model s-linearPart) using 1 <;> ring
  change ‖Jet.model s-linearPart‖ ≤ (23/2 : ℝ) at hm
  linarith

/-- No analytic estimate is an unfilled record field in this concrete witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e55acee66012f2b39be7c88cbebdf6a34bc3bfd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
