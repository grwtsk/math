# ContMDiff.prodMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ed0ed2f2a61121aba5eef7f8b5cd7d025026416",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dda25776-628b-9f43-abf6-9d97c7c8f668",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb624e83-a693-98c0-7bce-d1fb3242ae31",
  "kind": "theorem",
  "lexical_name": "ContMDiff.prodMap",
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
  "slug": "contmdiff-prodmap--4465afb50a146e993a5b7774",
  "source": {
    "blob": "9ed0ed2f2a61121aba5eef7f8b5cd7d025026416",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 333,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4465afb50a146e993a5b7774103e171d67747d927e58edc5e7f4d9f6e2516b50",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb624e83-a693-98c0-7bce-d1fb3242ae31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContMDiff.prodMap (hf : ContMDiff I I' n f) (hg : ContMDiff J J' n g) :
    ContMDiff (I.prod J) (I'.prod J') n (Prod.map f g) := by
  intro p
  exact (hf p.1).prodMap' (hg p.2)

@[deprecated (since := "2025-03-08")]
alias ContMDiff.prod_map := ContMDiff.prodMap

@[deprecated (since := "2024-11-20")] alias SmoothWithinAt.prod_map := ContMDiffWithinAt.prod_map

@[deprecated (since := "2024-11-20")] alias SmoothAt.prod_map := ContMDiffAt.prod_map

@[deprecated (since := "2024-11-20")] alias SmoothOn.prod_map := ContMDiffOn.prod_map

@[deprecated (since := "2024-11-20")] alias Smooth.prod_map := ContMDiff.prod_map

end prodMap

section PiSpace

/-!
### Regularity of functions with codomain `Π i, F i`

We have no `ModelWithCorners.pi` yet, so we prove lemmas about functions `f : M → Π i, F i` and
use `𝓘(𝕜, Π i, F i)` as the model space.
-/


variable {ι : Type*} [Fintype ι] {Fi : ι → Type*} [∀ i, NormedAddCommGroup (Fi i)]
  [∀ i, NormedSpace 𝕜 (Fi i)] {φ : M → ∀ i, Fi i}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ed0ed2f2a61121aba5eef7f8b5cd7d025026416` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
