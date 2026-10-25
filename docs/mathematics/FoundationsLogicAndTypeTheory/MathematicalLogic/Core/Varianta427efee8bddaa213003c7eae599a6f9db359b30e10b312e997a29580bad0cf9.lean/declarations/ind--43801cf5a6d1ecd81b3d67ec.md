# ind₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9952298-9153-7090-deff-acb6a6662d27",
  "kind": "theorem",
  "lexical_name": "ind₂",
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
  "slug": "ind--43801cf5a6d1ecd81b3d67ec",
  "source": {
    "blob": "1fab3e725a3b89d0f36bba9b929c61cb1a68b3c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2184,
    "line": 2174,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta427efee8bddaa213003c7eae599a6f9db359b30e10b312e997a29580bad0cf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43801cf5a6d1ecd81b3d67ec8cf41ab5f661a610ddba1bf727cb4125e2a6ee7e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta427efee8bddaa213003c7eae599a6f9db359b30e10b312e997a29580bad0cf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9952298-9153-7090-deff-acb6a6662d27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2174–2184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem ind₂
    {motive : Quotient s₁ → Quotient s₂ → Prop}
    (h : (a : α) → (b : β) → motive (Quotient.mk s₁ a) (Quotient.mk s₂ b))
    (q₁ : Quotient s₁)
    (q₂ : Quotient s₂)
    : motive q₁ q₂ := by
  induction q₁ using Quotient.ind
  induction q₂ using Quotient.ind
  apply h

@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta427efee8bddaa213003c7eae599a6f9db359b30e10b312e997a29580bad0cf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta427efee8bddaa213003c7eae599a6f9db359b30e10b312e997a29580bad0cf9.lean#L2174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fab3e725a3b89d0f36bba9b929c61cb1a68b3c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
