# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3884e106b4270f25d9fd19cd206be7538b894498bbce325bf41989bc174961d1",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--ae64d2a76fe874eb38ee9bca",
  "source": {
    "blob": "b9bf69c6d6b028b8e79fc6cd4a3d90ba8d2e49fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 28,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/74edd21b562440808ad2efb723429552a82860a9bc9b7c9247fcf69324dd2283WeightAudit/Variant74edd21b562440808ad2efb723429552a82860a9bc9b7c9247fcf69324dd2283.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae64d2a76fe874eb38ee9bca5471ecb3723e5beef3283b5e9351729bd9ee4c49",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/74edd21b562440808ad2efb723429552a82860a9bc9b7c9247fcf69324dd2283WeightAudit/Variant74edd21b562440808ad2efb723429552a82860a9bc9b7c9247fcf69324dd2283.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3884e106b4270f25d9fd19cd206be7538b894498bbce325bf41989bc174961d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A t : ℝ) (hA : 1 ≤ A) :
    sourceWeight Realization.explicitSecondDerivative A t =
      deriv (poleReducedPrimitive A) t + poleReducedPrimitive A t :=
  sourceWeight_eq_poleReducedPrimitive A t (by linarith)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/74edd21b562440808ad2efb723429552a82860a9bc9b7c9247fcf69324dd2283WeightAudit/Variant74edd21b562440808ad2efb723429552a82860a9bc9b7c9247fcf69324dd2283.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/74edd21b562440808ad2efb723429552a82860a9bc9b7c9247fcf69324dd2283WeightAudit/Variant74edd21b562440808ad2efb723429552a82860a9bc9b7c9247fcf69324dd2283.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9bf69c6d6b028b8e79fc6cd4a3d90ba8d2e49fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
