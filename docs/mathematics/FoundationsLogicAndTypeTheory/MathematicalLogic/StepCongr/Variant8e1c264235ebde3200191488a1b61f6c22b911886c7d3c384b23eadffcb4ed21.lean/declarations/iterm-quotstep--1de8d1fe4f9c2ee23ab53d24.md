# IterM.QuotStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6691e1302aa1e79601c3222d0a7242ab6e653396a7b1ca9735085c8f39a3e9eb",
  "kind": "abbrev",
  "lexical_name": "IterM.QuotStep",
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
  "slug": "iterm-quotstep--1de8d1fe4f9c2ee23ab53d24",
  "source": {
    "blob": "f20833768a33bdf44dcde85294657a9dfdc94161",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StepCongr/Variant8e1c264235ebde3200191488a1b61f6c22b911886c7d3c384b23eadffcb4ed21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1de8d1fe4f9c2ee23ab53d24bebbe37c3810246ea7eb2a49d7d800ceebc586e8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StepCongr/Variant8e1c264235ebde3200191488a1b61f6c22b911886c7d3c384b23eadffcb4ed21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6691e1302aa1e79601c3222d0a7242ab6e653396a7b1ca9735085c8f39a3e9eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev IterM.QuotStep [Iterator α m β] [Monad m] [LawfulMonad m]
    (it : IterM (α := α) m β) : Type _ :=
  Quot (fun (s₁ s₂ : it.Step) => s₁.1.bundledQuotient = s₂.1.bundledQuotient)

/--
This function is used in lemmas about iterator equivalence (`Iter.Equiv` and `IterM.Equiv`).

Returns an `IterStep` from an `IterM.QuotStep`, discarding the `IsPlausibleStep` proof.
It commutes with `IterStep.bundledQuotient` and `Quot.mk _ : it.Step → it.QuotStep`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StepCongr/Variant8e1c264235ebde3200191488a1b61f6c22b911886c7d3c384b23eadffcb4ed21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StepCongr/Variant8e1c264235ebde3200191488a1b61f6c22b911886c7d3c384b23eadffcb4ed21.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f20833768a33bdf44dcde85294657a9dfdc94161` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
