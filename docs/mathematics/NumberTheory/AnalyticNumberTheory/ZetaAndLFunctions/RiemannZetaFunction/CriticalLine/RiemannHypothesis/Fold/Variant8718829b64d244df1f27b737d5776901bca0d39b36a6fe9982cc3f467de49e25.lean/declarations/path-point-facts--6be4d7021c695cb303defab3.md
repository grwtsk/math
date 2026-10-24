# path_point_facts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:328d28bd-7bce-1eb4-61f6-a20774a6573c",
  "kind": "lemma",
  "lexical_name": "path_point_facts",
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
  "slug": "path-point-facts--6be4d7021c695cb303defab3",
  "source": {
    "blob": "ed874bd9cb2a69f95ecb6b37abad38bb8a7812f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 97,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6be4d7021c695cb303defab3840e17751c2ebfcb23fae921fad65fbb06758ed4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:328d28bd-7bce-1eb4-61f6-a20774a6573c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma path_point_facts {s : ℂ} (hre : 0 < s.re) (him : 1 ≤ s.im)
    (hgood : GoodHeight s.im) : s ≠ 1 ∧ riemannZeta s ≠ 0 := by
  have hs1 : s ≠ 1 := by
    intro hh; rw [hh] at him; simp at him; linarith
  refine ⟨hs1, fun hz => ?_⟩
  rcases lt_or_ge s.re 1 with hlt | hge
  · exact hgood s ⟨hz, hre, hlt⟩ rfl
  · exact riemannZeta_ne_zero_of_one_le_re hge hz

/-- Λ'/Λ is continuous at every point of height T whenever T ≥ 1 is a good height. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed874bd9cb2a69f95ecb6b37abad38bb8a7812f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
