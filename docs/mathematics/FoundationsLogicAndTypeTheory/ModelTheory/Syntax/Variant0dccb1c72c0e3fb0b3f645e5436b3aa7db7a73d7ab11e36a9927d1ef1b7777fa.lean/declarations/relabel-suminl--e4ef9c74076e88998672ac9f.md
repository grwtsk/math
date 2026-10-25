# relabel_sumInl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49b31246-4719-5f36-b49e-47e01e6acd96",
  "kind": "theorem",
  "lexical_name": "relabel_sumInl",
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
  "slug": "relabel-suminl--e4ef9c74076e88998672ac9f",
  "source": {
    "blob": "eb03458f17ddff175671ca8a55480002b36a3248",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 577,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant0dccb1c72c0e3fb0b3f645e5436b3aa7db7a73d7ab11e36a9927d1ef1b7777fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4ef9c74076e88998672ac9fdc7b79aae8bce82bd7788162bf94d884f86a6960",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant0dccb1c72c0e3fb0b3f645e5436b3aa7db7a73d7ab11e36a9927d1ef1b7777fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49b31246-4719-5f36-b49e-47e01e6acd96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relabel_sumInl (φ : L.BoundedFormula α n) :
    (φ.relabel Sum.inl : L.BoundedFormula α (0 + n)) = φ.castLE (ge_of_eq (zero_add n)) := by
  simp only [relabel, relabelAux_sumInl]
  induction φ with
  | falsum => rfl
  | equal => simp [Fin.natAdd_zero, castLE_of_eq, mapTermRel]
  | rel => simp [Fin.natAdd_zero, castLE_of_eq, mapTermRel]; rfl
  | imp _ _ ih1 ih2 => simp_all [mapTermRel]
  | all _ ih3 => simp_all [mapTermRel]

@[deprecated (since := "2025-02-21")] alias relabel_sum_inl := relabel_sumInl

/-- Substitutes the variables in a given formula with terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant0dccb1c72c0e3fb0b3f645e5436b3aa7db7a73d7ab11e36a9927d1ef1b7777fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant0dccb1c72c0e3fb0b3f645e5436b3aa7db7a73d7ab11e36a9927d1ef1b7777fa.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb03458f17ddff175671ca8a55480002b36a3248` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
