# equation20_norms_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c827d18-345f-a244-3f1e-ec77ed8eabd5",
  "kind": "theorem",
  "lexical_name": "equation20_norms_summable",
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
  "slug": "equation20-norms-summable--8c0da05677c3429581c33d06",
  "source": {
    "blob": "0b22a534e84e8f05da2fde359148713862f11f68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 619,
    "line": 607,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c0da05677c3429581c33d06ec4e6f6571500a585e0111fd4b76d2788cbc50bb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c827d18-345f-a244-3f1e-ec77ed8eabd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 607–619.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equation20_norms_summable
    (s : ℂ) (hs : 1 < s.re) :
    Summable
      (fun o : ZeroOccurrence ↦
        ‖equation20Summand (shiftedValue o) s‖) := by
  have h :=
    (integral_norms_summable s hs).of_norm_bounded
      (fun o ↦
        norm_integral_le_integral_norm
          (occurrenceIntegrand s o))
  simpa only [integral_occurrence _ s hs] using h.norm

/-- Exact initial-half-plane checkpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean#L607).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b22a534e84e8f05da2fde359148713862f11f68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
