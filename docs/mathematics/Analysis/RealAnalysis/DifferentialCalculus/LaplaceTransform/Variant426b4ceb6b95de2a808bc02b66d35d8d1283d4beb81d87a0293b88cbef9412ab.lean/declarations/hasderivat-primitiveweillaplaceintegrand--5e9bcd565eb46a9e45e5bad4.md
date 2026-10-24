# hasDerivAt_primitiveWeilLaplaceIntegrand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40ca4837-8913-d0b4-2a4e-9b48ff5b0f4e",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_primitiveWeilLaplaceIntegrand",
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
  "slug": "hasderivat-primitiveweillaplaceintegrand--5e9bcd565eb46a9e45e5bad4",
  "source": {
    "blob": "56c25f11e1fbe5a610500f7cb37b0dedbe43d005",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e9bcd565eb46a9e45e5bad47c03019aeab5de0f552b49c89d06dded0198872b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40ca4837-8913-d0b4-2a4e-9b48ff5b0f4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem hasDerivAt_primitiveWeilLaplaceIntegrand
    (g : PrimitiveWeilTestFunction) (s : ℂ) (x : ℝ) :
    HasDerivAt (fun z : ℂ ↦ primitiveWeilLaplaceIntegrand g z x)
      (primitiveWeilLaplaceDerivativeIntegrand g s x) s := by
  unfold primitiveWeilLaplaceIntegrand primitiveWeilLaplaceDerivativeIntegrand
  have hlinear :
      HasDerivAt (fun z : ℂ ↦ (z - (1 / 2 : ℂ)) * (x : ℂ)) (x : ℂ) s := by
    simpa only [id_eq, one_mul] using
      ((hasDerivAt_id s).sub_const (1 / 2 : ℂ)).mul_const (x : ℂ)
  exact hlinear.cexp.const_mul (g x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56c25f11e1fbe5a610500f7cb37b0dedbe43d005` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
