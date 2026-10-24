# wholeCubicMajorant_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8998a7d7-41ed-a4fd-ff45-10a1b0aca8f5",
  "kind": "theorem",
  "lexical_name": "wholeCubicMajorant_integrable",
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
  "slug": "wholecubicmajorant-integrable--f4f870371dd50443e76ed55b",
  "source": {
    "blob": "34114111aca5f0278531bb06d2a61309f4c4f6ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 64,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Source/Variant1b4dfde9c04b9b7c1cc4b2bff749b0b016095d9d41f63740205e6893faa8ac81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4f870371dd50443e76ed55bf52c0c5a77a44bd79d43be875b8e2722157f175e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Source/Variant1b4dfde9c04b9b7c1cc4b2bff749b0b016095d9d41f63740205e6893faa8ac81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8998a7d7-41ed-a4fd-ff45-10a1b0aca8f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wholeCubicMajorant_integrable (A k : ℝ) :
    IntegrableOn (wholeCubicMajorant A k) (Ioi (0 : ℝ)) :=
  (((absoluteCoefficientWeight_integrable 4).const_mul (5 / 24 : ℝ)).add
    ((absoluteCoefficientWeight_integrable 5).div_const 48)).const_mul _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Source/Variant1b4dfde9c04b9b7c1cc4b2bff749b0b016095d9d41f63740205e6893faa8ac81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Source/Variant1b4dfde9c04b9b7c1cc4b2bff749b0b016095d9d41f63740205e6893faa8ac81.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34114111aca5f0278531bb06d2a61309f4c4f6ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
