# characteristic_top_eq_circleAverage_of_meromorphicOrderAt_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fffb5977-dcc7-3e32-666c-4b22640b60cd",
  "kind": "theorem",
  "lexical_name": "characteristic_top_eq_circleAverage_of_meromorphicOrderAt_pos",
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
  "slug": "characteristic-top-eq-circleaverage-of-meromorphicorderat-pos--2c1449a192ce9cf347167c15",
  "source": {
    "blob": "36ee2a1730aa25f0640153e8a4b6e7c917b7b412",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 198,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Cartan/Variant7f38d1a4e10b06b1786a08a1fe15d6eb4c92955e4560cea2aef23a19457750bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c1449a192ce9cf347167c154decfe89ab4b973d2b8b844096e25dd60a48892e",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Cartan/Variant7f38d1a4e10b06b1786a08a1fe15d6eb4c92955e4560cea2aef23a19457750bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fffb5977-dcc7-3e32-666c-4b22640b60cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem characteristic_top_eq_circleAverage_of_meromorphicOrderAt_pos
    (h₁f : Meromorphic f) (h₂f : 0 < meromorphicOrderAt f 0) (hR : R ≠ 0) :
    characteristic f ⊤ R = circleAverage (logCounting f · R) 0 1 := by
  rw [characteristic_top_eq_circleAverage_add_circleAverage h₁f hR]
  simp [circleAverage_log_norm_meromorphicTrailingCoeffAt_of_meromorphicOrderAt_pos h₂f]

/--
Qualitative version of **Cartan's formula**: Away from the point `0`, the difference between
`characteristic f ⊤` and `fun R ↦ circleAverage (logCounting f · R) 0 1` is constant. This
qualitative version of Cartan's formula exists because the specific value of the constant does not
matter in practice.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Cartan/Variant7f38d1a4e10b06b1786a08a1fe15d6eb4c92955e4560cea2aef23a19457750bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Cartan/Variant7f38d1a4e10b06b1786a08a1fe15d6eb4c92955e4560cea2aef23a19457750bb.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36ee2a1730aa25f0640153e8a4b6e7c917b7b412` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
