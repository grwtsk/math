# hasDerivWithinAt_arcsin_Iic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa03fefe-3833-be22-339b-e9ea0033cf81",
  "kind": "theorem",
  "lexical_name": "hasDerivWithinAt_arcsin_Iic",
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
  "slug": "hasderivwithinat-arcsin-iic--71231838387ea8a15085f6e2",
  "source": {
    "blob": "f0b05fec6aaffb7fec17cb2be7bf6e915d70294e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71231838387ea8a15085f6e2c631166d4ffc4d9d69e17e45c89f04e8a96d8e58",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa03fefe-3833-be22-339b-e9ea0033cf81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivWithinAt_arcsin_Iic {x : ℝ} (h : x ≠ 1) :
    HasDerivWithinAt arcsin (1 / √(1 - x ^ 2)) (Iic x) x := by
  rcases em (x = -1) with (rfl | h')
  · convert (hasDerivWithinAt_const (-1 : ℝ) _ (-(π / 2))).congr _ _ <;>
      simp +contextual [arcsin_of_le_neg_one]
  · exact (hasDerivAt_arcsin h' h).hasDerivWithinAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0b05fec6aaffb7fec17cb2be7bf6e915d70294e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
