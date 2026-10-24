# relfinrank_dvd_of_le_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7cf73dd860cd8c1ddbdd8d8493b917c8b0e67eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 267,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d339cd98abe088569f1bc14620e637c03af403d174f38022cb1055a49b4fda7d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20238900-6d87-972b-f1d3-a3e45dbe0cea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de2c2691-ae30-be09-97c9-bf86f6910cde",
  "kind": "theorem",
  "lexical_name": "relfinrank_dvd_of_le_left",
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
  "slug": "relfinrank-dvd-of-le-left--e35033124ccbbf03fbd5497c",
  "source": {
    "blob": "d7cf73dd860cd8c1ddbdd8d8493b917c8b0e67eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 267,
    "path": "GRWTSK/Algebra/Relrank/Variantd339cd98abe088569f1bc14620e637c03af403d174f38022cb1055a49b4fda7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e35033124ccbbf03fbd5497cad862f6a1ce09cf03e26579e051f541e85b01b50",
  "verification": {
    "reference": "docs/verification/Algebra/Relrank/Variantd339cd98abe088569f1bc14620e637c03af403d174f38022cb1055a49b4fda7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de2c2691-ae30-be09-97c9-bf86f6910cde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relfinrank_dvd_of_le_left (h : A ≤ B) : B.relfinrank C ∣ A.relfinrank C :=
  dvd_of_mul_left_eq _ (relfinrank_inf_mul_relfinrank_of_le C h)

end Subfield

namespace IntermediateField

variable {F : Type u} {E : Type v} [Field F] [Field E] [Algebra F E]

variable {L : Type w} [Field L] [Algebra F L]

variable (A B C : IntermediateField F E)

/-- `IntermediateField.relrank A B` is defined to be `[B : A ⊓ B]` as a `Cardinal`, in particular,
when `A ≤ B` it is `[B : A]`, the degree of the field extension `B / A`.
This is similar to `Subgroup.relindex` but it is `Cardinal` valued. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Relrank/Variantd339cd98abe088569f1bc14620e637c03af403d174f38022cb1055a49b4fda7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Relrank/Variantd339cd98abe088569f1bc14620e637c03af403d174f38022cb1055a49b4fda7d.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7cf73dd860cd8c1ddbdd8d8493b917c8b0e67eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
