# powerPermutation_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3757d071-23d6-1f6d-cdeb-7aa80756dedf",
  "kind": "theorem",
  "lexical_name": "powerPermutation_apply",
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
  "slug": "powerpermutation-apply--5ff0ffdc9da8b481373e99bf",
  "source": {
    "blob": "99d3a3c3d6465e76e3a4dc141f0e26e14183b92f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 165,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ff0ffdc9da8b481373e99bf3778a811da35d13ed93a3b309f9bc6d9e726416e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3757d071-23d6-1f6d-cdeb-7aa80756dedf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem powerPermutation_apply
    (d : Nat)
    (hd_pos : 0 < d)
    (hd : Nat.Coprime d (Fintype.card F - 1))
    (x : F) :
    powerPermutation d hd_pos hd x = x ^ d :=
  rfl

end PowerPermutations

section Inversion

variable {F : Type u} [Field F]

/-- Field inversion, extended by the standard convention `0⁻¹ = 0`, is an
involutive permutation of the whole field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99d3a3c3d6465e76e3a4dc141f0e26e14183b92f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
