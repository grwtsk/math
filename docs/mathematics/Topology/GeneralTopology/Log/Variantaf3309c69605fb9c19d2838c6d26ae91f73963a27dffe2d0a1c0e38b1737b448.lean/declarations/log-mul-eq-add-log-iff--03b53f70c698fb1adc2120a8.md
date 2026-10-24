# log_mul_eq_add_log_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0250a127-67ea-c60b-8fea-4f29cc5102a5",
  "kind": "lemma",
  "lexical_name": "log_mul_eq_add_log_iff",
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
  "slug": "log-mul-eq-add-log-iff--03b53f70c698fb1adc2120a8",
  "source": {
    "blob": "26e7b49526ee412a40c92387fe640b78ec08a2a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 102,
    "path": "GRWTSK/Topology/GeneralTopology/Log/Variantaf3309c69605fb9c19d2838c6d26ae91f73963a27dffe2d0a1c0e38b1737b448.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03b53f70c698fb1adc2120a87808726bbfe391703dab598313e045dfae15f168",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Log/Variantaf3309c69605fb9c19d2838c6d26ae91f73963a27dffe2d0a1c0e38b1737b448.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0250a127-67ea-c60b-8fea-4f29cc5102a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma log_mul_eq_add_log_iff {x y : ℂ} (hx₀ : x ≠ 0) (hy₀ : y ≠ 0) :
    log (x * y) = log x + log y ↔ arg x + arg y ∈ Set.Ioc (-π) π := by
  refine Complex.ext_iff.trans <| Iff.trans ?_ <| arg_mul_eq_add_arg_iff hx₀ hy₀
  simp_rw [add_re, add_im, log_re, log_im, norm_mul,
    Real.log_mul (norm_ne_zero_iff.mpr hx₀) (norm_ne_zero_iff.mpr hy₀), true_and]

alias ⟨_, log_mul⟩ := log_mul_eq_add_log_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Log/Variantaf3309c69605fb9c19d2838c6d26ae91f73963a27dffe2d0a1c0e38b1737b448.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Log/Variantaf3309c69605fb9c19d2838c6d26ae91f73963a27dffe2d0a1c0e38b1737b448.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26e7b49526ee412a40c92387fe640b78ec08a2a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
