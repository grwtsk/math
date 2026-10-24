# fromSpec_toSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eee3c4e44223e35ba4e3b87bf41994db9ed08ae8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 501,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f62a093de0d1fa3dbdf30f5b590ad3b6f4fb4a103c79fe5d7b73ad0ec1ffc02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0c67ca6-1b4e-6146-42b6-1882661e5a35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a292c1d-24ab-2c40-71ad-c8633dd60abc",
  "kind": "lemma",
  "lexical_name": "fromSpec_toSpec",
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
  "slug": "fromspec-tospec--8a997b20a03ec2a4f8e517d5",
  "source": {
    "blob": "eee3c4e44223e35ba4e3b87bf41994db9ed08ae8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 501,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant5f62a093de0d1fa3dbdf30f5b590ad3b6f4fb4a103c79fe5d7b73ad0ec1ffc02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a997b20a03ec2a4f8e517d5f8609ee0f9429c73adbbcd472e5f5fd64e768c9b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variant5f62a093de0d1fa3dbdf30f5b590ad3b6f4fb4a103c79fe5d7b73ad0ec1ffc02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a292c1d-24ab-2c40-71ad-c8633dd60abc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fromSpec_toSpec {f : A} {m : ℕ} (f_deg : f ∈ 𝒜 m) (hm : 0 < m) (x : Proj.T| pbo f) :
    FromSpec.toFun f_deg hm (toSpec 𝒜 f x) = x := by
  refine Subtype.ext <| ProjectiveSpectrum.ext <| HomogeneousIdeal.ext' ?_
  intros i z hzi
  refine (FromSpec.mem_carrier_iff_of_mem f_deg hm _ _ hzi).trans ?_
  exact (ToSpec.mk_mem_carrier _ _).trans (x.1.2.pow_mem_iff_mem m hm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variant5f62a093de0d1fa3dbdf30f5b590ad3b6f4fb4a103c79fe5d7b73ad0ec1ffc02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant5f62a093de0d1fa3dbdf30f5b590ad3b6f4fb4a103c79fe5d7b73ad0ec1ffc02.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eee3c4e44223e35ba4e3b87bf41994db9ed08ae8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
