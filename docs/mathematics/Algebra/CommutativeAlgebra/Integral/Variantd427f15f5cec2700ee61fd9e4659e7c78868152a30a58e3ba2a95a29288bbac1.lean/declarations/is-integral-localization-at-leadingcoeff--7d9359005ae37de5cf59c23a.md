# is_integral_localization_at_leadingCoeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd3fd64f39b0a988cd280af7d1b1e488259cbff5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d31e79ad-34f0-fddf-1c3d-e92615952095",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab17403e-7e60-3d63-881c-2de774737adf",
  "kind": "theorem",
  "lexical_name": "is_integral_localization_at_leadingCoeff",
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
  "slug": "is-integral-localization-at-leadingcoeff--7d9359005ae37de5cf59c23a",
  "source": {
    "blob": "fd3fd64f39b0a988cd280af7d1b1e488259cbff5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 161,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d9359005ae37de5cf59c23a34e1bacbeb7235c2fc600763b5e19d4151f54195",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab17403e-7e60-3d63-881c-2de774737adf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem is_integral_localization_at_leadingCoeff {x : S} (p : R[X]) (hp : aeval x p = 0)
    (hM : p.leadingCoeff ∈ M) :
    (map Sₘ (algebraMap R S)
            (show _ ≤ (Algebra.algebraMapSubmonoid S M).comap _ from M.le_comap_map) :
          Rₘ →+* _).IsIntegralElem
      (algebraMap S Sₘ x) :=
  haveI : IsLocalization (Submonoid.map (algebraMap R S) M) Sₘ :=
    inferInstanceAs (IsLocalization (Algebra.algebraMapSubmonoid S M) Sₘ)
  (algebraMap R S).isIntegralElem_localization_at_leadingCoeff x p hp M hM

/-- If `R → S` is an integral extension, `M` is a submonoid of `R`,
`Rₘ` is the localization of `R` at `M`,
and `Sₘ` is the localization of `S` at the image of `M` under the extension map,
then the induced map `Rₘ → Sₘ` is also an integral extension -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd3fd64f39b0a988cd280af7d1b1e488259cbff5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
