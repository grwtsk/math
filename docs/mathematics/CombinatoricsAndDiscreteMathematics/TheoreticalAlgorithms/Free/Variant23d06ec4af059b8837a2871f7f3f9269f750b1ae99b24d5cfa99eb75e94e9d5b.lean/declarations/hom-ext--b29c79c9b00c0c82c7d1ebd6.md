# hom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12946254-ddfe-fd49-699a-5a179172bb99",
  "kind": "theorem",
  "lexical_name": "hom_ext",
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
  "slug": "hom-ext--b29c79c9b00c0c82c7d1ebd6",
  "source": {
    "blob": "fccaa10dbab8dc8704521cffabbbbfd5600e4790",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 521,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variant23d06ec4af059b8837a2871f7f3f9269f750b1ae99b24d5cfa99eb75e94e9d5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b29c79c9b00c0c82c7d1ebd6b1588e75c654e36ff6ab22e11c05b2e47095f6de",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variant23d06ec4af059b8837a2871f7f3f9269f750b1ae99b24d5cfa99eb75e94e9d5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12946254-ddfe-fd49-699a-5a179172bb99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hom_ext {β : Type v} [Mul β] {f g : FreeSemigroup α →ₙ* β} (h : f ∘ of = g ∘ of) : f = g :=
  (FunLike.ext _ _) fun x ↦
    FreeSemigroup.recOnMul x (congr_fun h) fun x y hx hy ↦ by simp only [map_mul, *]
#align free_semigroup.hom_ext FreeSemigroup.hom_ext

section lift

variable {β : Type v} [Semigroup β] (f : α → β)

/-- Lifts a function `α → β` to a semigroup homomorphism `FreeSemigroup α → β` given
a semigroup `β`. -/
@[to_additive (attr := simps symm_apply) "Lifts a function `α → β` to an additive semigroup
homomorphism `FreeAddSemigroup α → β` given an additive semigroup `β`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variant23d06ec4af059b8837a2871f7f3f9269f750b1ae99b24d5cfa99eb75e94e9d5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variant23d06ec4af059b8837a2871f7f3f9269f750b1ae99b24d5cfa99eb75e94e9d5b.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fccaa10dbab8dc8704521cffabbbbfd5600e4790` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
