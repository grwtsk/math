# abs_eq_one_of_pow_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:502c83f4-4b3d-f023-d67e-461913fbc09a",
  "kind": "theorem",
  "lexical_name": "abs_eq_one_of_pow_eq_one",
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
  "slug": "abs-eq-one-of-pow-eq-one--4b1f11b2ca5f424d0299e0b4",
  "source": {
    "blob": "c1ead90a1550317118f029c8c1c0db711da3b424",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Imo2008Q4/Variant8494f195272ebe3f32caf319d7516f83b349ef0051dc239cad803c580935fa5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b1f11b2ca5f424d0299e0b45120bcceb9f1ee8dfc3d89d8969b50bafedb5f0d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Imo2008Q4/Variant8494f195272ebe3f32caf319d7516f83b349ef0051dc239cad803c580935fa5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:502c83f4-4b3d-f023-d67e-461913fbc09a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_eq_one_of_pow_eq_one (x : ℝ) (n : ℕ) (hn : n ≠ 0) (h : x ^ n = 1) : |x| = 1 := by
  rw [← pow_left_inj (abs_nonneg x) zero_le_one (pos_iff_ne_zero.2 hn), one_pow, pow_abs, h,
    abs_one]
#align imo2008_q4.abs_eq_one_of_pow_eq_one Imo2008Q4.abs_eq_one_of_pow_eq_one

end Imo2008Q4

open Imo2008Q4

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Imo2008Q4/Variant8494f195272ebe3f32caf319d7516f83b349ef0051dc239cad803c580935fa5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Imo2008Q4/Variant8494f195272ebe3f32caf319d7516f83b349ef0051dc239cad803c580935fa5d.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1ead90a1550317118f029c8c1c0db711da3b424` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
