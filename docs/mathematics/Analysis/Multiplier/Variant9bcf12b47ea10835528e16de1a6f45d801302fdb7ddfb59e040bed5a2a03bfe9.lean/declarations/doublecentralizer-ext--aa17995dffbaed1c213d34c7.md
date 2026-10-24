# DoubleCentralizer.ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31eb08fa7dd71ba585809bbee515aa38657add36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9bcf12b47ea10835528e16de1a6f45d801302fdb7ddfb59e040bed5a2a03bfe9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:549f3100-59da-de13-e007-ebecff8252d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42aeeef6-af6f-15e5-b5a3-445f69034481",
  "kind": "lemma",
  "lexical_name": "DoubleCentralizer.ext",
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
  "slug": "doublecentralizer-ext--aa17995dffbaed1c213d34c7",
  "source": {
    "blob": "31eb08fa7dd71ba585809bbee515aa38657add36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 76,
    "path": "GRWTSK/Analysis/Multiplier/Variant9bcf12b47ea10835528e16de1a6f45d801302fdb7ddfb59e040bed5a2a03bfe9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa17995dffbaed1c213d34c77ef5fe1b023c0ad772f3a6b1569206baad0e6755",
  "verification": {
    "reference": "docs/verification/Analysis/Multiplier/Variant9bcf12b47ea10835528e16de1a6f45d801302fdb7ddfb59e040bed5a2a03bfe9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42aeeef6-af6f-15e5-b5a3-445f69034481`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma DoubleCentralizer.ext (𝕜 : Type u) (A : Type v) [NontriviallyNormedField 𝕜]
    [NonUnitalNormedRing A] [NormedSpace 𝕜 A] [SMulCommClass 𝕜 A A] [IsScalarTower 𝕜 A A]
    (a b : 𝓜(𝕜, A)) (h : a.toProd = b.toProd) : a = b := by
  cases a
  cases b
  simpa using h

namespace DoubleCentralizer

section NontriviallyNormed

variable (𝕜 A : Type*) [NontriviallyNormedField 𝕜] [NonUnitalNormedRing A]
variable [NormedSpace 𝕜 A] [SMulCommClass 𝕜 A A] [IsScalarTower 𝕜 A A]

/-!
### Algebraic structure

Because the multiplier algebra is defined as the algebra of double centralizers, there is a natural
injection `DoubleCentralizer.toProdMulOpposite : 𝓜(𝕜, A) → (A →L[𝕜] A) × (A →L[𝕜] A)ᵐᵒᵖ`
defined by `fun a ↦ (a.fst, MulOpposite.op a.snd)`. We use this map to pull back the ring, module
and algebra structure from `(A →L[𝕜] A) × (A →L[𝕜] A)ᵐᵒᵖ` to `𝓜(𝕜, A)`. -/

variable {𝕜 A}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Multiplier/Variant9bcf12b47ea10835528e16de1a6f45d801302fdb7ddfb59e040bed5a2a03bfe9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Multiplier/Variant9bcf12b47ea10835528e16de1a6f45d801302fdb7ddfb59e040bed5a2a03bfe9.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31eb08fa7dd71ba585809bbee515aa38657add36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
