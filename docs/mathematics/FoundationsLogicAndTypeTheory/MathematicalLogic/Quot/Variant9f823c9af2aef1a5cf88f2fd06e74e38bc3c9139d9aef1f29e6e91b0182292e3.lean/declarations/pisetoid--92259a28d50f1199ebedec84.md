# piSetoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:226764397f30bd86d9e7fd3b344f7c7dd02d3933f429746b5647cb3f971b095e",
  "kind": "instance",
  "lexical_name": "piSetoid",
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
  "slug": "pisetoid--92259a28d50f1199ebedec84",
  "source": {
    "blob": "12e821417ec92e0e00b044fafceb90c656b25c62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 392,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variant9f823c9af2aef1a5cf88f2fd06e74e38bc3c9139d9aef1f29e6e91b0182292e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92259a28d50f1199ebedec8497de4b81a6bb8d27159b67f0106932f942c772f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variant9f823c9af2aef1a5cf88f2fd06e74e38bc3c9139d9aef1f29e6e91b0182292e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:226764397f30bd86d9e7fd3b344f7c7dd02d3933f429746b5647cb3f971b095e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance piSetoid {ι : Sort*} {α : ι → Sort*} [∀ i, Setoid (α i)] : Setoid (∀ i, α i) where
  r a b := ∀ i, a i ≈ b i
  iseqv := ⟨fun _ _ ↦ Setoid.refl _,
            fun h _ ↦ Setoid.symm (h _),
            fun h₁ h₂ _ ↦ Setoid.trans (h₁ _) (h₂ _)⟩

/-- Given a class of functions `q : @Quotient (∀ i, α i) _`, returns the class of `i`-th projection
`Quotient (S i)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variant9f823c9af2aef1a5cf88f2fd06e74e38bc3c9139d9aef1f29e6e91b0182292e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variant9f823c9af2aef1a5cf88f2fd06e74e38bc3c9139d9aef1f29e6e91b0182292e3.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12e821417ec92e0e00b044fafceb90c656b25c62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
