# isNilpotent_mulRight_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c45a67598656435e169c1eeb2d328a7d111769e8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0136714-715c-bde7-26f0-395d87ff7a85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:747533ed-af76-e21c-8f9a-658ccb07ff89",
  "kind": "theorem",
  "lexical_name": "isNilpotent_mulRight_iff",
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
  "slug": "isnilpotent-mulright-iff--322804f81aea9cdde8ff76aa",
  "source": {
    "blob": "c45a67598656435e169c1eeb2d328a7d111769e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 281,
    "path": "GRWTSK/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:322804f81aea9cdde8ff76aa0f69de9170789ca08a8f256840fd4885bd6fcd53",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:747533ed-af76-e21c-8f9a-658ccb07ff89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNilpotent_mulRight_iff (a : A) : IsNilpotent (mulRight R a) ↔ IsNilpotent a := by
  constructor <;> rintro ⟨n, hn⟩ <;> use n <;>
      simp only [mulRight_eq_zero_iff, pow_mulRight] at hn ⊢ <;>
    exact hn
#align linear_map.is_nilpotent_mul_right_iff LinearMap.isNilpotent_mulRight_iff

end LinearMap

namespace Module.End

variable {M : Type v} [Ring R] [AddCommGroup M] [Module R M]

variable {f : Module.End R M} {p : Submodule R M} (hp : p ≤ p.comap f)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Nilpotent/Variant5d3c97402c70c3fef0656d19f830620114542a07c5dc0458ef02ccb97ea89663.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c45a67598656435e169c1eeb2d328a7d111769e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
