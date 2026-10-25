# surjective_liftOn'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17fcee59-0511-ccae-c6a4-7c5b75f0a149",
  "kind": "lemma",
  "lexical_name": "surjective_liftOn'",
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
  "slug": "surjective-lifton--640c63b8f61c3c22e7c6fceb",
  "source": {
    "blob": "12e821417ec92e0e00b044fafceb90c656b25c62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 584,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variant9f823c9af2aef1a5cf88f2fd06e74e38bc3c9139d9aef1f29e6e91b0182292e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:640c63b8f61c3c22e7c6fceb9a2cb750f39b202797c34e9c1b10f0a5f206a2ef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variant9f823c9af2aef1a5cf88f2fd06e74e38bc3c9139d9aef1f29e6e91b0182292e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17fcee59-0511-ccae-c6a4-7c5b75f0a149`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 584–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma surjective_liftOn' {f : α → φ} (h) :
    Function.Surjective (fun x : Quotient s₁ ↦ x.liftOn' f h) ↔ Function.Surjective f :=
  Quot.surjective_lift _

/-- A version of `Quotient.liftOn₂` taking `{s₁ : Setoid α} {s₂ : Setoid β}` as implicit arguments
instead of instance arguments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variant9f823c9af2aef1a5cf88f2fd06e74e38bc3c9139d9aef1f29e6e91b0182292e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variant9f823c9af2aef1a5cf88f2fd06e74e38bc3c9139d9aef1f29e6e91b0182292e3.lean#L584).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12e821417ec92e0e00b044fafceb90c656b25c62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
