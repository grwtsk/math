# supermodular_iff_cross_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c38f509-3bff-6331-e476-7b21d582e49f",
  "kind": "theorem",
  "lexical_name": "supermodular_iff_cross_nonneg",
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
  "slug": "supermodular-iff-cross-nonneg--f218721ef926136db82d3470",
  "source": {
    "blob": "c2ff0c18ccdc89ec7fb64e950d78e67337b14656",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 81,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variant0aa15115247793ae3c97ef6389e4c6573dcdc419c9da47630cdd3ce5abef5dce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f218721ef926136db82d3470a15b2993c3c8cf3c352ee9e6e995f3351f668026",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variant0aa15115247793ae3c97ef6389e4c6573dcdc419c9da47630cdd3ce5abef5dce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c38f509-3bff-6331-e476-7b21d582e49f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem supermodular_iff_cross_nonneg {H : Matrix ι ι ℂ} (hH : H.IsHermitian) :
    MaximalDefect.Supermodular (value H) ↔
      ∀ s t, 0 ≤ cross H (s \ t) (t \ s) := by
  constructor
  · intro h s t
    have hd := hermitian_union_inter_defect hH s t
    have hs := h s t
    change value H s + value H t ≤ value H (s ∩ t) + value H (s ∪ t) at hs
    linarith
  · intro h s t
    have hd := hermitian_union_inter_defect hH s t
    have hs := h s t
    change value H s + value H t ≤ value H (s ∩ t) + value H (s ∪ t)
    linarith

/-- A negative actual cross block excludes unrestricted selection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variant0aa15115247793ae3c97ef6389e4c6573dcdc419c9da47630cdd3ce5abef5dce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variant0aa15115247793ae3c97ef6389e4c6573dcdc419c9da47630cdd3ce5abef5dce.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2ff0c18ccdc89ec7fb64e950d78e67337b14656` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
