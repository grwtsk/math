# potential_normalized_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f75266b-fb9d-ac99-4153-b831b58a4d1f",
  "kind": "theorem",
  "lexical_name": "potential_normalized_pi",
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
  "slug": "potential-normalized-pi--e3a55b9c5c75a99e8d447be6",
  "source": {
    "blob": "0096b9b806212287bdcfa503838428ac60260fea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 441,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variantbf248361a1282c3122fe85d4ee4c8831278031f848caf757d1c25848e882ee08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3a55b9c5c75a99e8d447be62aa75c9528b1bb2bcf08868aeff188a1ad3bff0d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variantbf248361a1282c3122fe85d4ee4c8831278031f848caf757d1c25848e882ee08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f75266b-fb9d-ac99-4153-b831b58a4d1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem potential_normalized_pi (hw : SystemWeaklyNormalizing P)
    {Γ : List (Expr S)} {A B : Expr S} {s : S}
    (h : HasType P Γ (.pi A B) (.sort s)) :
    potential P C D Γ (Expr.pi A B).normalForm = 1 +
      (if Profile P Γ A ∈ D ∧ ActiveLayer P C (Profile P (A :: Γ) B)
       then potential P C D Γ A.normalForm else 0) +
      (if Profile P (A :: Γ) B ∈ D then potential P C D (A :: Γ) B.normalForm else 0) := by
  classical
  obtain ⟨a, b, c, hA, hB, _, _⟩ := h.generation_pi
  have wA := hA.weaklyNormalizing hw
  have wB := hB.weaklyNormalizing hw
  have hc := ContextEquivalent.head_conversion hA (hA.normalForm hw) (Expr.normalForm_spec
    wA).1.converts
  have hp := (potential_context (C := C) (D := D) (hB.normalForm hw) hc).symm
  rw [Expr.normalForm_pi wA wB, potential, ← hc.profile B.normalForm, hp,
    Profile.normalForm, Profile.normalForm]

open Classical in
/-- The full potential inequality. The outer triple and its codomain/product
vertices are fixed exactly as in the source legal-frame argument. SingleSource
is proved above for the actual one-variable substitution and all binder lifts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variantbf248361a1282c3122fe85d4ee4c8831278031f848caf757d1c25848e882ee08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variantbf248361a1282c3122fe85d4ee4c8831278031f848caf757d1c25848e882ee08.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0096b9b806212287bdcfa503838428ac60260fea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
