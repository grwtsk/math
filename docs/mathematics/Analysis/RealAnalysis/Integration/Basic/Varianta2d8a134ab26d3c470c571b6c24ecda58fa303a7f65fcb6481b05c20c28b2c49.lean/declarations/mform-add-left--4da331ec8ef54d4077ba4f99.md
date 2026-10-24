# Mform_add_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac1311c5-8297-31d8-34e5-9633e258a544",
  "kind": "lemma",
  "lexical_name": "Mform_add_left",
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
  "slug": "mform-add-left--4da331ec8ef54d4077ba4f99",
  "source": {
    "blob": "7f5598539f46f75f1cb8a084bcef17c567c1e3c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 176,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4da331ec8ef54d4077ba4f99f95fe239a75afaf986520d091adf26ef8bf1ac5b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac1311c5-8297-31d8-34e5-9633e258a544`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Mform_add_left (hΦ : Continuous Φ) {u v w : ℝ → ℝ} (hu : Continuous u)
    (hv : Continuous v) (hw : Continuous w) :
    Mform Φ T (u + v) w = Mform Φ T u w + Mform Φ T v w := by
  unfold Mform
  rw [← integral_add (Mform_integrableOn hΦ hu hw) (Mform_integrableOn hΦ hv hw)]
  congr 1; funext q; simp only [Pi.add_apply]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f5598539f46f75f1cb8a084bcef17c567c1e3c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
