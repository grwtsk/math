# comul_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "544c6d9108d09fe0e46096189024aa2a2f07f6f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4d51506-d41f-9e94-f074-40a276563b6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13bb6071-97a6-d42a-a552-6cd6d8fa0dd7",
  "kind": "lemma",
  "lexical_name": "comul_single",
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
  "slug": "comul-single--866d73a5077da92cce4a3a7e",
  "source": {
    "blob": "544c6d9108d09fe0e46096189024aa2a2f07f6f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 40,
    "path": "GRWTSK/Algebra/MonoidAlgebra/Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:866d73a5077da92cce4a3a7eeea540dec7696849442b5109d31d0009aab011b7",
  "verification": {
    "reference": "docs/verification/Algebra/MonoidAlgebra/Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13bb6071-97a6-d42a-a552-6cd6d8fa0dd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comul_single (x : X) (a : A) :
    Coalgebra.comul (R := R) (single x a) =
      TensorProduct.map (lsingle x) (lsingle x) (Coalgebra.comul a) :=
  Finsupp.comul_single _ _ _ _ _

end MonoidAlgebra

namespace AddMonoidAlgebra

variable {R : Type*} [CommSemiring R] {A : Type*} [Semiring A]
  {X : Type*} [Module R A] [Coalgebra R A]

variable (R A X) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MonoidAlgebra/Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MonoidAlgebra/Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `544c6d9108d09fe0e46096189024aa2a2f07f6f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
