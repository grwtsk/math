# partialTraj_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c38f2fd-2b9d-29bd-c96b-d25b9929deed",
  "kind": "theorem",
  "lexical_name": "partialTraj_const",
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
  "slug": "partialtraj-const--7d7cc14bd9a05cdc4e121bb3",
  "source": {
    "blob": "235cbc8fdb311106a29dbe5ba5299fb35e3cf95e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 210,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d7cc14bd9a05cdc4e121bb3fcd0e33b8fe79e255929b946f09edd49a0dd19ec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c38f2fd-2b9d-29bd-c96b-d25b9929deed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partialTraj_const {a b : ℕ} :
    partialTraj (fun n ↦ const _ (μ (n + 1))) a b =
      (Kernel.id ×ₖ (const _ (Measure.pi (fun i : Ioc a b ↦ μ i)))).map (IicProdIoc a b) := by
  rw [partialTraj_eq_prod, partialTraj_const_restrict₂]

namespace Measure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ProductMeasure/Variant16488cc0d4bb729481bc2bea2b5612a6c9dadd79f9f503d1b6ab1b4acff49b43.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `235cbc8fdb311106a29dbe5ba5299fb35e3cf95e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
