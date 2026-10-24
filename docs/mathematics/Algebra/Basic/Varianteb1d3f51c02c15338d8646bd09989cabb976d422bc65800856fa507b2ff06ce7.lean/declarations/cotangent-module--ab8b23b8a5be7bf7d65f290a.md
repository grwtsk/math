# Cotangent.module

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:668117515221563148c7bd9a0b3154a34ef93c3a48ffc624a1d1e1fef998a5ee",
  "kind": "instance",
  "lexical_name": "Cotangent.module",
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
  "slug": "cotangent-module--ab8b23b8a5be7bf7d65f290a",
  "source": {
    "blob": "577fe06140e45bce34c448e91329dc1bc732d032",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 311,
    "path": "GRWTSK/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab8b23b8a5be7bf7d65f290a81b2fc72f4bd84e3c0f07944923c543835dbb1f7",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:668117515221563148c7bd9a0b3154a34ef93c3a48ffc624a1d1e1fef998a5ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Cotangent.module : Module S P.Cotangent where
  smul := fun r s ↦ .of (P.σ r • s.val)
  smul_zero := fun r ↦ ext (smul_zero (P.σ r))
  smul_add := fun r x y ↦ ext (smul_add (P.σ r) x.val y.val)
  add_smul := fun r s x ↦ by
    have := smul_eq_zero_of_mem (P.σ (r + s) - (P.σ r + P.σ s) : P.Ring) (by simp ) x
    simpa only [sub_smul, add_smul, sub_eq_zero]
  zero_smul := fun x ↦ smul_eq_zero_of_mem (P.σ 0 : P.Ring) (by simp) x
  one_smul := fun x ↦ by
    have := smul_eq_zero_of_mem (P.σ 1 - 1 : P.Ring) (by simp) x
    simpa [sub_eq_zero, sub_smul]
  mul_smul := fun r s x ↦ by
    have := smul_eq_zero_of_mem (P.σ (r * s) - (P.σ r * P.σ s) : P.Ring) (by simp) x
    simpa only [sub_smul, mul_smul, sub_eq_zero] using this

noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `577fe06140e45bce34c448e91329dc1bc732d032` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
