# logQuotient_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a577345-668a-41ac-d0a3-fc58e2dfdbe7",
  "kind": "theorem",
  "lexical_name": "logQuotient_intervalIntegrable",
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
  "slug": "logquotient-intervalintegrable--ebc5d2649bf408f27e77acc5",
  "source": {
    "blob": "2e50f6bba737218702b50c791dc0b41f71937b5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebc5d2649bf408f27e77acc53f51217e59072baa51062010adb44a4c15b1306a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a577345-668a-41ac-d0a3-fc58e2dfdbe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logQuotient_intervalIntegrable {a b : ℝ} (ha : 4 ≤ a) (hb : 4 ≤ b) :
    IntervalIntegrable logQuotient volume a b := by
  exact (logQuotient_continuousOn.mono (by
    intro x hx
    rcases le_total a b with h | h
    · rw [uIcc_of_le h] at hx
      exact ha.trans hx.1
    · rw [uIcc_of_ge h] at hx
      exact hb.trans hx.1)).intervalIntegrable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e50f6bba737218702b50c791dc0b41f71937b5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
