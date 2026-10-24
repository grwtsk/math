# hasSum_taylorSeries_of_entire

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:560ea533-fd04-2f39-0595-26f3606d9b18",
  "kind": "lemma",
  "lexical_name": "hasSum_taylorSeries_of_entire",
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
  "slug": "hassum-taylorseries-of-entire--9a8facc5e3891f47111aef7f",
  "source": {
    "blob": "8d1e87cd1b6e0e269111d43a19624d1c253253cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 131,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a8facc5e3891f47111aef7fd7ccb07bf65b7e67f6f1f0ce7dae5c95986d8593",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:560ea533-fd04-2f39-0595-26f3606d9b18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_taylorSeries_of_entire :
    HasSum (fun n : ℕ ↦ (n ! : ℂ)⁻¹ • (z - c) ^ n • iteratedDeriv n f c) (f z) :=
  hasSum_taylorSeries_on_emetric_ball hf.differentiableOn <| EMetric.mem_ball.mpr <|
    edist_lt_top ..

include hf in
/-- A function that is complex differentiable on the complex plane is given by evaluating
its Taylor series at any point `c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d1e87cd1b6e0e269111d43a19624d1c253253cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
