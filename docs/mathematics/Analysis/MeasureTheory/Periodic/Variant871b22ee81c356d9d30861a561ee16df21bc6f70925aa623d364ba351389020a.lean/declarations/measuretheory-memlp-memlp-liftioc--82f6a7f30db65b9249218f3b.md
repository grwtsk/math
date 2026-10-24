# MeasureTheory.MemLp.memLp_liftIoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab6ba047-ade5-aa85-1e32-3836bf313351",
  "kind": "lemma",
  "lexical_name": "MeasureTheory.MemLp.memLp_liftIoc",
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
  "slug": "measuretheory-memlp-memlp-liftioc--82f6a7f30db65b9249218f3b",
  "source": {
    "blob": "fe18168521a13fd0cab569f0cf1212a594b1bf14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 230,
    "path": "GRWTSK/Analysis/MeasureTheory/Periodic/Variant871b22ee81c356d9d30861a561ee16df21bc6f70925aa623d364ba351389020a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82f6a7f30db65b9249218f3b94a34dd6dd9dd550e26e248374c1bf6b008f0ce6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Periodic/Variant871b22ee81c356d9d30861a561ee16df21bc6f70925aa623d364ba351389020a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab6ba047-ade5-aa85-1e32-3836bf313351`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MeasureTheory.MemLp.memLp_liftIoc {T : ℝ} [hT : Fact (0 < T)] {t : ℝ} {f : ℝ → ℂ} {p : ℝ≥0∞}
    (hLp : MemLp f p (volume.restrict (Ioc t (t + T)))) :
      MemLp (AddCircle.liftIoc T t f) p := by
  simp only [AddCircle.liftIoc, Set.domRestrict_def, Function.comp_def]
  apply hLp.comp_measurePreserving
  refine .comp (measurePreserving_subtype_coe measurableSet_Ioc) ?_
  exact AddCircle.measurePreserving_equivIoc T

namespace UnitAddCircle

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Periodic/Variant871b22ee81c356d9d30861a561ee16df21bc6f70925aa623d364ba351389020a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Periodic/Variant871b22ee81c356d9d30861a561ee16df21bc6f70925aa623d364ba351389020a.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe18168521a13fd0cab569f0cf1212a594b1bf14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
