# ContMDiff.continuous_tangentMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "559d4d74dc5cc61540c8e679e6929a4787b6f381",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 331,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49304b85-49d8-6665-6423-c9b550e6ac5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04a6339a-4eb4-7f79-9009-8b6f57f9e614",
  "kind": "theorem",
  "lexical_name": "ContMDiff.continuous_tangentMap",
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
  "slug": "contmdiff-continuous-tangentmap--a64dd40b5a70cecfe32cad8d",
  "source": {
    "blob": "559d4d74dc5cc61540c8e679e6929a4787b6f381",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 331,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a64dd40b5a70cecfe32cad8d7771dc57d46b8e437d308f6d4e35fff9fa143235",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04a6339a-4eb4-7f79-9009-8b6f57f9e614`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContMDiff.continuous_tangentMap (hf : ContMDiff I I' n f) (hmn : 1 ≤ n) :
    Continuous (tangentMap I I' f) := by
  rw [← contMDiffOn_univ] at hf
  rw [continuous_iff_continuousOn_univ]
  convert hf.continuousOn_tangentMapWithin hmn uniqueMDiffOn_univ
  rw [tangentMapWithin_univ]

@[deprecated (since := "2024-11-21")] alias Smooth.tangentMap := ContMDiff.contMDiff_tangentMap

end tangentMap

namespace TangentBundle

open Bundle

/-- The derivative of the zero section of the tangent bundle maps `⟨x, v⟩` to `⟨⟨x, 0⟩, ⟨v, 0⟩⟩`.

Note that, as currently framed, this is a statement in coordinates, thus reliant on the choice
of the coordinate system we use on the tangent bundle.

However, the result itself is coordinate-dependent only to the extent that the coordinates
determine a splitting of the tangent bundle.  Moreover, there is a canonical splitting at each
point of the zero section (since there is a canonical horizontal space there, the tangent space
to the zero section, in addition to the canonical vertical space which is the kernel of the
derivative of the projection), and this canonical splitting is also the one that comes from the
coordinates on the tangent bundle in our definitions. So this statement is not as crazy as it
may seem.

TODO define splittings of vector bundles; state this result invariantly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559d4d74dc5cc61540c8e679e6929a4787b6f381` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
