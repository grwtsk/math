# ringModuleOf_bracket_proj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52f623da-3a22-70c8-67d3-7b0c4e4c0c7b",
  "kind": "lemma",
  "lexical_name": "ringModuleOf_bracket_proj",
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
  "slug": "ringmoduleof-bracket-proj--28cf15ab524ab6e67dbdba6e",
  "source": {
    "blob": "ab9ba471259a2b2625021c90af021e73648d061d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 351,
    "path": "GRWTSK/Algebra/Extension/Variantcc9dfd4481d4bff0e3af92c1f6fb5731f4bc6345de7e343f61adbbb8e1fa1ba0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28cf15ab524ab6e67dbdba6ee016fd640d02a41d26fba8f4b05a3e0b25c15eba",
  "verification": {
    "reference": "docs/verification/Algebra/Extension/Variantcc9dfd4481d4bff0e3af92c1f6fb5731f4bc6345de7e343f61adbbb8e1fa1ba0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52f623da-3a22-70c8-67d3-7b0c4e4c0c7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ringModuleOf_bracket_proj [IsLieAbelian M] (E : Extension R M L) (y : M) (z : E.L) :
    letI := E.ringModuleOf
    ⁅E.proj z, y⁆ = E.toKer.symm ⁅z, E.toKer y⁆ := by
  obtain ⟨x, hx⟩ : E.proj_surjective.hasRightInverse.choose (E.proj z) - z ∈ E.incl.range := by
    rw [E.IsExtension.exact]
    change _ ∈ E.proj.ker
    simp [E.proj_surjective.hasRightInverse.choose_spec (E.proj z)]
  rw [ringModuleOf_bracket, EmbeddingLike.apply_eq_iff_eq, ← sub_eq_zero, ← sub_lie,
    Subtype.ext_iff, LieSubmodule.coe_bracket, lie_toKer_apply, ZeroMemClass.coe_zero, ← hx,
    LieHom.coe_toLinearMap, ← LieHom.map_lie, trivial_lie_zero M M x y, map_zero]

/-- Given an extension of `L` by `M` whose kernel `M` is abelian, the kernel `M` gets an `R`-linear
`L`-module structure. We do not make this an instance, because we may have to work with more than
one extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Extension/Variantcc9dfd4481d4bff0e3af92c1f6fb5731f4bc6345de7e343f61adbbb8e1fa1ba0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Extension/Variantcc9dfd4481d4bff0e3af92c1f6fb5731f4bc6345de7e343f61adbbb8e1fa1ba0.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab9ba471259a2b2625021c90af021e73648d061d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
