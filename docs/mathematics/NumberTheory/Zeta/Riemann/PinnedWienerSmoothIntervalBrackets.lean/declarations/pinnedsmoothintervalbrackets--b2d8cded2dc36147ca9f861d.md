# PinnedSmoothIntervalBrackets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bbfe8ce169eda9983c1c898b6b8b34ba2ee3920d6d7c4367326dca1e9a599be",
  "kind": "def",
  "lexical_name": "PinnedSmoothIntervalBrackets",
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
  "slug": "pinnedsmoothintervalbrackets--b2d8cded2dc36147ca9f861d",
  "source": {
    "blob": "5830184b9c03d227551b941d0ba64962457ba6bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 131,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2d8cded2dc36147ca9f861d23a742daa71de859a10419fdad5755c71acee69f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bbfe8ce169eda9983c1c898b6b8b34ba2ee3920d6d7c4367326dca1e9a599be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PinnedSmoothIntervalBrackets (a b η : ℝ) : Prop :=
  ∃ lower upper : ℝ → ℝ,
    ContDiff ℝ ∞ lower ∧
    ContDiff ℝ ∞ upper ∧
    HasCompactSupport lower ∧
    HasCompactSupport upper ∧
    closure (Function.support lower) ⊆ Set.Ioi (0 : ℝ) ∧
    closure (Function.support upper) ⊆ Set.Ioi (0 : ℝ) ∧
    (∀ x : ℝ,
      0 ≤ lower x ∧
      lower x ≤ (Set.Ico a b).indicator (fun _ : ℝ => (1 : ℝ)) x ∧
      (Set.Ico a b).indicator (fun _ : ℝ => (1 : ℝ)) x ≤ upper x ∧
      upper x ≤ 1) ∧
    b - a - η ≤ ∫ x in Set.Ioi (0 : ℝ), lower x ∧
    (∫ x in Set.Ioi (0 : ℝ), upper x) ≤ b - a + η

/-- The lower smooth bracket: it vanishes outside (a,b), equals one on
the INNER closed interval, and has at least b-a-eta integral mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5830184b9c03d227551b941d0ba64962457ba6bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
