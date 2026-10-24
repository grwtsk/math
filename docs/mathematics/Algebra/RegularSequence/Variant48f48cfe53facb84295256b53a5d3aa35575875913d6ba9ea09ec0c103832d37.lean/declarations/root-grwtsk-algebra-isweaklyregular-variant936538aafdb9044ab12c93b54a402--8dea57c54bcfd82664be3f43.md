# _root_.GRWTSK.Algebra.IsWeaklyRegular.Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.AddHom.map_smul_top_toAddSubgroup_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5350e35e-9746-05e1-69b5-f314c0c4a878",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.IsWeaklyRegular.Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.AddHom.map_smul_top_toAddSubgroup_of_surjective",
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
  "slug": "root-grwtsk-algebra-isweaklyregular-variant936538aafdb9044ab12c93b54a402--8dea57c54bcfd82664be3f43",
  "source": {
    "blob": "8dc8fbf34801ddba52953c5a35aa51d0ddbb6ba4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 170,
    "path": "GRWTSK/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dea57c54bcfd82664be3f434d80552c611c0716234fe556c2479c9904b7fd39",
  "verification": {
    "reference": "docs/verification/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5350e35e-9746-05e1-69b5-f314c0c4a878`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma _root_.GRWTSK.Algebra.IsWeaklyRegular.Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.AddHom.map_smul_top_toAddSubgroup_of_surjective
    {f : M →+ M₂} {as : List R} {bs : List S} (hf : Function.Surjective f)
    (h : List.Forall₂ (fun r s => ∀ x, f (r • x) = s • f x) as bs) :
    (Ideal.ofList as • ⊤ : Submodule R M).toAddSubgroup.map f =
      (Ideal.ofList bs • ⊤ : Submodule S M₂).toAddSubgroup := by
  induction h with
  | nil =>
    convert AddSubgroup.map_bot f using 1 <;>
      rw [Ideal.ofList_nil, bot_smul, bot_toAddSubgroup]
  | @cons r s _ _ h _ ih =>
    conv => congr <;> rw [Ideal.ofList_cons, sup_smul, sup_toAddSubgroup,
      ideal_span_singleton_smul, pointwise_smul_toAddSubgroup,
      top_toAddSubgroup, pointwise_smul_def]
    apply DFunLike.ext (f.comp (toAddMonoidEnd R M r))
      ((toAddMonoidEnd S M₂ s).comp f) at h
    rw [AddSubgroup.map_sup, ih, map_map, h, ← map_map,
      map_top_of_surjective f hf]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dc8fbf34801ddba52953c5a35aa51d0ddbb6ba4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
