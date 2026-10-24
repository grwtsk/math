# completion_x_cubic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25127ba9-6ad1-ebeb-4520-a0829ca8ffcb",
  "kind": "theorem",
  "lexical_name": "completion_x_cubic",
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
  "slug": "completion-x-cubic--aad667f33e76dbc23b9ed8e2",
  "source": {
    "blob": "211c963917049ac0e992864408ad1b56ff11b1b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 211,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aad667f33e76dbc23b9ed8e2cd33c4cd7d3eebf68a4732ac166a6f5942b063ef",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25127ba9-6ad1-ebeb-4520-a0829ca8ffcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completion_x_cubic (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) :
    let Xf := completionEquiv a b r j hr hj (xCoordinate a b r)
    Xf * (Xf - PowerSeries.C a) * (Xf + PowerSeries.C b) = PowerSeries.X ^ 2 := by
  have h := congrArg (completionEquiv a b r j hr hj) (limit_cubic a b r)
  have ha : completionEquiv a b r j hr hj (algebraMap R (Limit a b r) a) =
      PowerSeries.C a := (completionEquiv a b r j hr hj).commutes a
  have hb : completionEquiv a b r j hr hj (algebraMap R (Limit a b r) b) =
      PowerSeries.C b := (completionEquiv a b r j hr hj).commutes b
  simpa only [map_mul, map_sub, map_add, map_pow, ha, hb, completion_y] using h

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetCompletion

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- Completion along the SAME selected integral torsion section, modeled as the
compatible inverse limit of the independently defined finite relation quotients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `211c963917049ac0e992864408ad1b56ff11b1b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
