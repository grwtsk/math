# differenceAux_tensorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c9563d266d97b9201d51fce894db3958bc18e43",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 321,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efe06f25-6174-c9e9-7f6d-4910f7a214e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61b366dd-7c98-de2e-3d89-59890fed8a57",
  "kind": "theorem",
  "lexical_name": "differenceAux_tensorial",
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
  "slug": "differenceaux-tensorial--9a3811aa62ac102a8452b1e3",
  "source": {
    "blob": "2c9563d266d97b9201d51fce894db3958bc18e43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 321,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a3811aa62ac102a8452b1e3eb42694dd65c7334457594b03cbc398246bcc7bb",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61b366dd-7c98-de2e-3d89-59890fed8a57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem differenceAux_tensorial (hcov : IsCovariantDerivativeOn F cov s)
    (hcov' : IsCovariantDerivativeOn F cov' s)
    (x : M) (hx : x ∈ s) : TensorialAt I F (differenceAux cov cov' · x) x where
  smul hf hσ := by
    simp [differenceAux, hcov.leibniz hσ hf, hcov'.leibniz hσ hf]
    module
  add hσ hσ' := by
    simp [differenceAux, hcov.add hσ hσ', hcov'.add hσ hσ']
    abel

-- We need more assumptions to use the tensoriality criterion in order to build the difference
-- operation.
variable [CompleteSpace 𝕜] [FiniteDimensional 𝕜 F]
  [VectorBundle 𝕜 F V] [ContMDiffVectorBundle 1 F V I]

open scoped Classical in
/-- The difference of two covariant derivatives, as a one-form taking values in the
endomorphisms of `V`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c9563d266d97b9201d51fce894db3958bc18e43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
