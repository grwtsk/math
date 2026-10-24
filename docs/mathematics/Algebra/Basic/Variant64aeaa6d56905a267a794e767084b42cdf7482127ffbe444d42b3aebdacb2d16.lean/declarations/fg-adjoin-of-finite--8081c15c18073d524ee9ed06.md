# fg_adjoin_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8c61bc8-39a8-80c3-cdfa-dea11cc6a7ca",
  "kind": "theorem",
  "lexical_name": "fg_adjoin_of_finite",
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
  "slug": "fg-adjoin-of-finite--8081c15c18073d524ee9ed06",
  "source": {
    "blob": "076cd7506f3991fcbc5b42c7dd21d290705b027f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 198,
    "path": "GRWTSK/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8081c15c18073d524ee9ed06de3d221c2df8e1f88742f8e3daa0d0af3a71a027",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8c61bc8-39a8-80c3-cdfa-dea11cc6a7ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fg_adjoin_of_finite {s : Set A} (hfs : s.Finite) (his : ∀ x ∈ s, IsIntegral R x) :
    (Algebra.adjoin R s).toSubmodule.FG := by
  induction s, hfs using Set.Finite.induction_on with
  | empty =>
    refine ⟨{1}, Submodule.ext fun x => ?_⟩
    rw [Algebra.adjoin_empty, Finset.coe_singleton, ← one_eq_span, Algebra.toSubmodule_bot]
  | @insert a s _ _ ih =>
    rw [← Set.union_singleton, Algebra.adjoin_union_coe_submodule]
    exact FG.mul
      (ih fun i hi => his i <| Set.mem_insert_of_mem a hi)
      (his a <| Set.mem_insert a s).fg_adjoin_singleton

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `076cd7506f3991fcbc5b42c7dd21d290705b027f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
