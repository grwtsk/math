# ιMulti_family_linearIndependent_field

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b05ee820-9799-56ee-b46b-7251a37b9829",
  "kind": "lemma",
  "lexical_name": "ιMulti_family_linearIndependent_field",
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
  "slug": "multi-family-linearindependent-field--aa027e3fb0cbe1271c8c0401",
  "source": {
    "blob": "444a8fe51619ea950069990bc9554b09d8beccea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 212,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant743b9b1f91e46992d58906a8e0fdd75359a66e0014c293f3249935008bca66fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa027e3fb0cbe1271c8c04019ce2624cae4e5302669f19c4329ed555b701e8cd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant743b9b1f91e46992d58906a8e0fdd75359a66e0014c293f3249935008bca66fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b05ee820-9799-56ee-b46b-7251a37b9829`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ιMulti_family_linearIndependent_field {I : Type*} [LinearOrder I] {v : I → E}
    (hv : LinearIndependent K v) : LinearIndependent K (ιMulti_family K n v) := by
  let W := Submodule.span K (Set.range v)
  suffices ∃ b : Basis I K W, v = W.subtype ∘ b by
    obtain ⟨b, hb⟩ := this
    rw [hb, ← map_comp_ιMulti_family]
    exact LinearIndependent.map' (coe_basis K n b ▸ (b.exteriorPower n).linearIndependent)
      _ (LinearMap.ker_eq_bot.mpr (map_injective_field (Submodule.subtype_injective _)))
  use Module.Basis.span hv
  ext i
  rw [Submodule.coe_subtype, Function.comp_apply, Basis.span_apply]

end exteriorPower
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant743b9b1f91e46992d58906a8e0fdd75359a66e0014c293f3249935008bca66fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant743b9b1f91e46992d58906a8e0fdd75359a66e0014c293f3249935008bca66fb.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `444a8fe51619ea950069990bc9554b09d8beccea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
