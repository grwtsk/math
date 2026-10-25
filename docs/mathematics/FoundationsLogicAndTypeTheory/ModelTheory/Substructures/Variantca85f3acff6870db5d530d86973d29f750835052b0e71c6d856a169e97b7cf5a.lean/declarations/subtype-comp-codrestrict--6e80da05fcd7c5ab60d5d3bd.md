# subtype_comp_codRestrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d008e31817e100b80f8a87526c3410adcb0077c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 782,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca85f3acff6870db5d530d86973d29f750835052b0e71c6d856a169e97b7cf5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f00fad64-79de-14ee-68ab-ee3a67450628",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:725a6cf5-95e8-d859-de72-d90e5cd11ce9",
  "kind": "theorem",
  "lexical_name": "subtype_comp_codRestrict",
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
  "slug": "subtype-comp-codrestrict--6e80da05fcd7c5ab60d5d3bd",
  "source": {
    "blob": "d008e31817e100b80f8a87526c3410adcb0077c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 787,
    "line": 782,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Substructures/Variantca85f3acff6870db5d530d86973d29f750835052b0e71c6d856a169e97b7cf5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e80da05fcd7c5ab60d5d3bdaa7bf7c81a730ea1e8f1a24579e090cb4636a9d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Substructures/Variantca85f3acff6870db5d530d86973d29f750835052b0e71c6d856a169e97b7cf5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:725a6cf5-95e8-d859-de72-d90e5cd11ce9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 782–787.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subtype_comp_codRestrict (f : M →[L] N) (p : L.Substructure N) (h : ∀ b, f b ∈ p) :
    p.subtype.toHom.comp (codRestrict p f h) = f :=
  ext fun _ => rfl

/-- The range of a first-order hom `f : M → N` is a submodule of `N`.
See Note [range copy pattern]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Substructures/Variantca85f3acff6870db5d530d86973d29f750835052b0e71c6d856a169e97b7cf5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Substructures/Variantca85f3acff6870db5d530d86973d29f750835052b0e71c6d856a169e97b7cf5a.lean#L782).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d008e31817e100b80f8a87526c3410adcb0077c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
