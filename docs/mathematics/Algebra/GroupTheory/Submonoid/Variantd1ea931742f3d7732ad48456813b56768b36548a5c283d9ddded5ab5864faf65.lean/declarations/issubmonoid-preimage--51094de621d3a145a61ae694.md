# IsSubmonoid.preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a314aaa-beac-3185-dbe0-0508c643ba91",
  "kind": "theorem",
  "lexical_name": "IsSubmonoid.preimage",
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
  "slug": "issubmonoid-preimage--51094de621d3a145a61ae694",
  "source": {
    "blob": "6ed115176b334e3f03a238e4d3bd6594faf748c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 184,
    "path": "GRWTSK/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51094de621d3a145a61ae694d432019bdcf7e5198232f21805f56bfb49b8d858",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a314aaa-beac-3185-dbe0-0508c643ba91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSubmonoid.preimage {N : Type*} [Monoid N] {f : M → N} (hf : IsMonoidHom f) {s : Set N}
    (hs : IsSubmonoid s) : IsSubmonoid (f ⁻¹' s) :=
  { one_mem := show f 1 ∈ s by (rw [IsMonoidHom.map_one hf]; exact hs.one_mem)
    mul_mem := fun {a b} (ha : f a ∈ s) (hb : f b ∈ s) =>
      show f (a * b) ∈ s by (rw [IsMonoidHom.map_mul' hf]; exact hs.mul_mem ha hb) }
#align is_submonoid.preimage IsSubmonoid.preimage
#align is_add_submonoid.preimage IsAddSubmonoid.preimage

/-- The image of a submonoid under a monoid hom is a submonoid of the codomain. -/
@[to_additive
      "The image of an `AddSubmonoid` under an `AddMonoid` hom is an `AddSubmonoid` of the
      codomain."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ed115176b334e3f03a238e4d3bd6594faf748c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
