# sigmaFiberAddEquiv_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18ecdefa295921a37c16196311cbde67b520e5c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 394,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f8b84f1865da1ff6b398524018d6460ecf5d19e049fd8b6987bb007c5e9c3c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea440133-0145-fcba-6207-c12b07e4976d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:617a2095-b910-4769-5aee-593ef86bfb3f",
  "kind": "theorem",
  "lexical_name": "sigmaFiberAddEquiv_of",
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
  "slug": "sigmafiberaddequiv-of--a8b7780e2d15097b5224711c",
  "source": {
    "blob": "18ecdefa295921a37c16196311cbde67b520e5c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 394,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3f8b84f1865da1ff6b398524018d6460ecf5d19e049fd8b6987bb007c5e9c3c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8b7780e2d15097b5224711c633b7ddfd96f2adc5cb80066731d06a64b3c47b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3f8b84f1865da1ff6b398524018d6460ecf5d19e049fd8b6987bb007c5e9c3c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:617a2095-b910-4769-5aee-593ef86bfb3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sigmaFiberAddEquiv_of [DecidableEq ι₁] (i : ι₁) (x : β i) :
    sigmaFiberAddEquiv f (of _ i x) = of _ (f i) (of _ ⟨i, rfl⟩ x) :=
  let h := Equiv.sigmaFiberEquiv f
  let k : (j : ι₂) × {i₁ : ι₁ // f i₁ = j} := ⟨f i, ⟨i, rfl⟩⟩
  calc sigmaFiberAddEquiv f (of β (h k) x)
    _ = sigmaCurry (of (fun k : (j' : ι₂) × {i // f i = j'} ↦ β k.2) k x) := by
      rw [sigmaFiberAddEquiv_apply]
      exact congrArg sigmaCurry (equivCongrLeft_of (h := h.symm) _ _)
    _ = of _ k.1 (of _ k.2 x) := by simp

end SigmaFiber

/-- The canonical embedding from `⨁ i, A i` to `M` where `A` is a collection of `AddSubmonoid M`
indexed by `ι`.

When `S = Submodule _ M`, this is available as a `LinearMap`, `DirectSum.coe_linearMap`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3f8b84f1865da1ff6b398524018d6460ecf5d19e049fd8b6987bb007c5e9c3c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3f8b84f1865da1ff6b398524018d6460ecf5d19e049fd8b6987bb007c5e9c3c4.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18ecdefa295921a37c16196311cbde67b520e5c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
