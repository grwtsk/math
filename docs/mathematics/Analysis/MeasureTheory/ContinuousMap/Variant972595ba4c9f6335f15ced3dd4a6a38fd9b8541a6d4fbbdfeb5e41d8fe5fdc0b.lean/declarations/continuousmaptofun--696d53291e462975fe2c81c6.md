# continuousMapToFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90cf09eb1923ba0a7a2f7560881bac81ae3a03bca2908e19456b9fa8df1c6611",
  "kind": "def",
  "lexical_name": "continuousMapToFun",
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
  "slug": "continuousmaptofun--696d53291e462975fe2c81c6",
  "source": {
    "blob": "eb8b2515241a4bf01b6d5bf0c90d53e705bd44fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 168,
    "path": "GRWTSK/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:696d53291e462975fe2c81c6b92d3aab17296cfe2abfd99f9e6457b8aecc843b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90cf09eb1923ba0a7a2f7560881bac81ae3a03bca2908e19456b9fa8df1c6611`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def continuousMapToFun : C(X, Y) ≃ᵐ {f : X → Y // Continuous f} where
  toFun f := ⟨f, f.continuous⟩
  invFun f := ⟨f.1, f.2⟩
  left_inv f := rfl
  right_inv f := rfl
  measurable_toFun :=
    .subtype_mk (.of_eval fun _ ↦ (continuous_eval_const _).measurable)
  measurable_invFun :=
    ContinuousMap.measurable_iff_eval.2 fun x ↦ by simpa using measurable_subtype_coe.eval

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb8b2515241a4bf01b6d5bf0c90d53e705bd44fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
