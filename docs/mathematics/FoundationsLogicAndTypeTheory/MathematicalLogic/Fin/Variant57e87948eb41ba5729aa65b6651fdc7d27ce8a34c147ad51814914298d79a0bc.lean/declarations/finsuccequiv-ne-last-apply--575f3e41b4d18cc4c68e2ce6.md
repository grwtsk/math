# finSuccEquiv'_ne_last_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af3f2c1e-6f1f-b069-8132-27b75ebe1d43",
  "kind": "theorem",
  "lexical_name": "finSuccEquiv'_ne_last_apply",
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
  "slug": "finsuccequiv-ne-last-apply--575f3e41b4d18cc4c68e2ce6",
  "source": {
    "blob": "296d66aeeb76eee2261115d14f3006bcff607c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 240,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant57e87948eb41ba5729aa65b6651fdc7d27ce8a34c147ad51814914298d79a0bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:575f3e41b4d18cc4c68e2ce6ee2748d092841223c2cdffa83b98ce7d07eefaa5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant57e87948eb41ba5729aa65b6651fdc7d27ce8a34c147ad51814914298d79a0bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af3f2c1e-6f1f-b069-8132-27b75ebe1d43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finSuccEquiv'_ne_last_apply {i j : Fin (n + 1)} (hi : i ≠ Fin.last n) (hj : j ≠ i) :
    finSuccEquiv' i j = (i.castLT (Fin.val_lt_last hi)).predAbove j := by
  rcases Fin.exists_succAbove_eq hj with ⟨j, rfl⟩
  rcases Fin.exists_castSucc_eq.2 hi with ⟨i, rfl⟩
  simp
#align fin_succ_equiv'_ne_last_apply finSuccEquiv'_ne_last_apply

/-- `Fin.succAbove` as an order isomorphism between `Fin n` and `{x : Fin (n + 1) // x ≠ p}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant57e87948eb41ba5729aa65b6651fdc7d27ce8a34c147ad51814914298d79a0bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant57e87948eb41ba5729aa65b6651fdc7d27ce8a34c147ad51814914298d79a0bc.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `296d66aeeb76eee2261115d14f3006bcff607c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
