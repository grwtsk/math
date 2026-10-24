# cutoff_le_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33ab45fb-88e4-a3ac-ef26-d2535c1c932e",
  "kind": "theorem",
  "lexical_name": "cutoff_le_inventory",
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
  "slug": "cutoff-le-inventory--13ffd514287cc99c56bd797d",
  "source": {
    "blob": "7efaa1dad81f5d220105b42884cd5a24fb80e3d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 120,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/15d85079900b890a6f4c75d9a0899536eba4ec1823980fce3b10555c52698abaSourceActualShor/Variant1b7b544f97eecf9b781d44c0d5614defcf141de395feb1bd72529d6b2cc6e151.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13ffd514287cc99c56bd797dee1ba0c7daa21dd1696ca79e7549fa05d65c2b0e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/15d85079900b890a6f4c75d9a0899536eba4ec1823980fce3b10555c52698abaSourceActualShor/Variant1b7b544f97eecf9b781d44c0d5614defcf141de395feb1bd72529d6b2cc6e151.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33ab45fb-88e4-a3ac-ef26-d2535c1c932e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cutoff_le_inventory {A : ℝ} (hA : 1 ≤ A) :
    vaughanCutoff A ≤ ⌊Real.exp (2 * A)⌋₊ := by
  have he := Real.pow_div_factorial_le_exp (2 * A) (by linarith) 2
  norm_num at he
  apply Nat.floor_mono
  nlinarith

/-- The original full first-prime moment retains the exact closed short and long pieces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/15d85079900b890a6f4c75d9a0899536eba4ec1823980fce3b10555c52698abaSourceActualShor/Variant1b7b544f97eecf9b781d44c0d5614defcf141de395feb1bd72529d6b2cc6e151.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/15d85079900b890a6f4c75d9a0899536eba4ec1823980fce3b10555c52698abaSourceActualShor/Variant1b7b544f97eecf9b781d44c0d5614defcf141de395feb1bd72529d6b2cc6e151.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7efaa1dad81f5d220105b42884cd5a24fb80e3d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
