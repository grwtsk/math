# ofPowerSeries_apply_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6fd78b79602e68bf8a99d83fba6e25671361fc2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b2d7dd8-a570-cb53-ff37-fde948587f73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ddb71ac-c67d-6f78-6593-4dfeb134384f",
  "kind": "theorem",
  "lexical_name": "ofPowerSeries_apply_coeff",
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
  "slug": "ofpowerseries-apply-coeff--4c9d8d7efe7f74b191064a1f",
  "source": {
    "blob": "a6fd78b79602e68bf8a99d83fba6e25671361fc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 106,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c9d8d7efe7f74b191064a1f6e4d7fdf116012dc66fae588a6c5322cc954d947",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ddb71ac-c67d-6f78-6593-4dfeb134384f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofPowerSeries_apply_coeff (x : PowerSeries R) (n : ℕ) :
    (ofPowerSeries Γ R x).coeff n = PowerSeries.coeff R n x := by simp [ofPowerSeries_apply]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PowerSeries/Variant1055c050cc861beaebc561282aaf3ed96245df953f97fd34c204d15e231e07fb.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6fd78b79602e68bf8a99d83fba6e25671361fc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
