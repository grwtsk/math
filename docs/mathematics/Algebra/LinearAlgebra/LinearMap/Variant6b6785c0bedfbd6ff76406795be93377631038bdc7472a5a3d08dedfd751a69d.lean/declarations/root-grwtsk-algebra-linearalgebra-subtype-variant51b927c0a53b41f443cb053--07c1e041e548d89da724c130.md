# _root_.GRWTSK.Algebra.LinearAlgebra.Subtype.Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.Module.End.pow_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:126530b1-3504-b930-7781-81b8918ef36a",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.Subtype.Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.Module.End.pow_restrict",
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
  "slug": "root-grwtsk-algebra-linearalgebra-subtype-variant51b927c0a53b41f443cb053--07c1e041e548d89da724c130",
  "source": {
    "blob": "3c965a9a47ff24b9f62b7595b303fa88d4440bdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 309,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant6b6785c0bedfbd6ff76406795be93377631038bdc7472a5a3d08dedfd751a69d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07c1e041e548d89da724c1306f59768d13b24ce84daeb086230cb400d89de705",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/Variant6b6785c0bedfbd6ff76406795be93377631038bdc7472a5a3d08dedfd751a69d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:126530b1-3504-b930-7781-81b8918ef36a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.Subtype.Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.Module.End.pow_restrict {p : Submodule R M} (n : ℕ) (h : ∀ x ∈ p, f' x ∈ p)
    (h' := Module.End.pow_apply_mem_of_forall_mem n h) :
    (f'.restrict h) ^ n = (f' ^ n).restrict h' := by
  ext x
  have : Semiconj (↑) (f'.restrict h) f' := fun _ ↦ coe_restrict_apply _ _
  simp [Module.End.coe_pow, this.iterate_right _ _]

end

end AddCommMonoid

section CommSemiring

variable [CommSemiring R] [AddCommMonoid M] [AddCommMonoid M₂]
variable [Module R M] [Module R M₂]
variable (f g : M →ₗ[R] M₂)

/-- Alternative version of `domRestrict` as a linear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/Variant6b6785c0bedfbd6ff76406795be93377631038bdc7472a5a3d08dedfd751a69d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant6b6785c0bedfbd6ff76406795be93377631038bdc7472a5a3d08dedfd751a69d.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c965a9a47ff24b9f62b7595b303fa88d4440bdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
