# goldbachSingleRationalArcContribution_eq_exactResidue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19edebba-037f-5eb0-9e67-f4d27a722d8c",
  "kind": "theorem",
  "lexical_name": "goldbachSingleRationalArcContribution_eq_exactResidue",
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
  "slug": "goldbachsinglerationalarccontribution-eq-exactresidue--6348f87fceceb6cead701785",
  "source": {
    "blob": "69e435dc1e311e5968d3a801dc598e52257d836d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 56,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6348f87fceceb6cead7017853fe59f513245ec166b2f38b5766f737377c80d7a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19edebba-037f-5eb0-9e67-f4d27a722d8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachSingleRationalArcContribution_eq_exactResidue
    {Q N : ℕ} {aq : ℕ × ℕ}
    (haq : aq ∈ goldbachRationalArcIndices Q) :
    goldbachSingleRationalArcContribution Q N aq =
      goldbachExactResidueArcContribution Q N aq := by
  rcases aq with ⟨a, q⟩
  have hq : 0 < q :=
    (mem_goldbachRationalArcIndices.1 haq).2.2.1
  unfold goldbachSingleRationalArcContribution
    goldbachExactResidueArcContribution
    goldbachExactResidueArcModel
  apply setIntegral_congr_fun
    (measurable_goldbachClippedRationalArc Q N (a, q))
  intro x hx
  exact goldbachCircleIntegrand_eq_residueClassModel N a q hq x

/-- The signed contribution of any proposed model on one clipped rational arc. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69e435dc1e311e5968d3a801dc598e52257d836d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
