# pow_le_kstar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e997a9d785530c4423087c71dd2b3ce3229ba11a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87304e8e-3fb9-68ba-2548-22230ac12783",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1cb032ce-b2cd-cd5c-8ac1-dd0094843240",
  "kind": "theorem",
  "lexical_name": "pow_le_kstar",
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
  "slug": "pow-le-kstar--70a779b601be3f7eea970002",
  "source": {
    "blob": "e997a9d785530c4423087c71dd2b3ce3229ba11a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 279,
    "path": "GRWTSK/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70a779b601be3f7eea97000276873092c3bf040084f90661383a191c967e8d16",
  "verification": {
    "reference": "docs/verification/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cb032ce-b2cd-cd5c-8ac1-dd0094843240`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_le_kstar : ∀ {n : ℕ}, a ^ n ≤ a∗
  | 0 => (pow_zero _).trans_le one_le_kstar
  | n + 1 => by
    rw [pow_succ]
    exact (mul_le_mul_left' pow_le_kstar _).trans mul_kstar_le_kstar
#align pow_le_kstar pow_le_kstar

end KleeneAlgebra

namespace Prod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e997a9d785530c4423087c71dd2b3ce3229ba11a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
