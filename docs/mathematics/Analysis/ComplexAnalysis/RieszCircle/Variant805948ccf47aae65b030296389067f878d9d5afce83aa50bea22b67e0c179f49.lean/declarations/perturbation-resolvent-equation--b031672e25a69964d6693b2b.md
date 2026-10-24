# perturbation_resolvent_equation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdf9d48707cf9984996c02d232aaa3cd14ed56b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/805948ccf47aae65b030296389067f878d9d5afce83aa50bea22b67e0c179f49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4175aec1-5c22-9473-a987-b49536df5ec8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ddcc1d2-0b97-63b9-a139-e231f0b4a4d9",
  "kind": "theorem",
  "lexical_name": "perturbation_resolvent_equation",
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
  "slug": "perturbation-resolvent-equation--b031672e25a69964d6693b2b",
  "source": {
    "blob": "bdf9d48707cf9984996c02d232aaa3cd14ed56b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 120,
    "path": "GRWTSK/Analysis/ComplexAnalysis/RieszCircle/Variant805948ccf47aae65b030296389067f878d9d5afce83aa50bea22b67e0c179f49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b031672e25a69964d6693b2ba7ff89edcb4f9b9750a465ac07b5994b9a7cba6b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RieszCircle/Variant805948ccf47aae65b030296389067f878d9d5afce83aa50bea22b67e0c179f49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ddcc1d2-0b97-63b9-a139-e231f0b4a4d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perturbation_resolvent_equation {a b : B} {z : R}
    (ha : z ∈ resolventSet R a) (hb : z ∈ resolventSet R b) :
    resolvent b z - resolvent a z =
      resolvent b z * (b - a) * resolvent a z := by
  have hb_right : resolvent b z * (↑ₐ z - b) = 1 := by
    rw [spectrum.resolvent_eq hb]
    exact hb.val_inv_mul
  have ha_left : (↑ₐ z - a) * resolvent a z = 1 := by
    rw [spectrum.resolvent_eq ha]
    exact ha.mul_val_inv
  calc
    resolvent b z - resolvent a z =
        resolvent b z * ((↑ₐ z - a) * resolvent a z) -
          (resolvent b z * (↑ₐ z - b)) * resolvent a z := by
      rw [hb_right, ha_left, mul_one, one_mul]
    _ = resolvent b z * ((↑ₐ z - a) - (↑ₐ z - b)) * resolvent a z := by
      noncomm_ring
    _ = resolvent b z * (b - a) * resolvent a z := by
      congr 1
      abel_nf

end Algebraic

section CommutativeScalars

variable {R : Type u} {B : Type v}
variable [CommRing R] [Ring B] [Algebra R B]

local notation "↑ₐ" => algebraMap R B

/--
The conventional central-scalar form
`R(z) - R(w) = (w - z) R(z) R(w)`.
-/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/RieszCircle/Variant805948ccf47aae65b030296389067f878d9d5afce83aa50bea22b67e0c179f49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/RieszCircle/Variant805948ccf47aae65b030296389067f878d9d5afce83aa50bea22b67e0c179f49.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdf9d48707cf9984996c02d232aaa3cd14ed56b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
