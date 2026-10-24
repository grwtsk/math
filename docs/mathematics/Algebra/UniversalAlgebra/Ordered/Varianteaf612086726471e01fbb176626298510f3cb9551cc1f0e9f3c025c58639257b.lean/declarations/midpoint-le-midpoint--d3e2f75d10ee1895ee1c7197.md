# midpoint_le_midpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cfaa55c8b9c92e00ca1009d174edc2f35c1ef4c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4060c6b9-2c5b-0ff8-89ea-6c6699fcd505",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35fae30e-be00-e75d-56b2-53184c86ef1f",
  "kind": "theorem",
  "lexical_name": "midpoint_le_midpoint",
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
  "slug": "midpoint-le-midpoint--d3e2f75d10ee1895ee1c7197",
  "source": {
    "blob": "cfaa55c8b9c92e00ca1009d174edc2f35c1ef4c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 101,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3e2f75d10ee1895ee1c719787aa990697ea581726faafe1be1e3978ddc920a5",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35fae30e-be00-e75d-56b2-53184c86ef1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem midpoint_le_midpoint (ha : a ≤ a') (hb : b ≤ b') : midpoint k a b ≤ midpoint k a' b' :=
  lineMap_mono_endpoints ha hb (invOf_nonneg.2 zero_le_two) <| invOf_le_one one_le_two

end LinearOrderedRing

section LinearOrderedField

variable [Field k] [LinearOrder k] [IsStrictOrderedRing k]
  [AddCommGroup E] [PartialOrder E] [IsOrderedAddMonoid E]
variable [Module k E] [OrderedSMul k E]

section

variable {a b : E} {r r' : k}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfaa55c8b9c92e00ca1009d174edc2f35c1ef4c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
