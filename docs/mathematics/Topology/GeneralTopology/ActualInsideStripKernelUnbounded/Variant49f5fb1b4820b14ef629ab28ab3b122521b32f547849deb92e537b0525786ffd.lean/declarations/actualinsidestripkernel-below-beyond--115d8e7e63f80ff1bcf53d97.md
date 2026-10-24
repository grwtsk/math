# actualInsideStripKernel_below_beyond

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:178fcd4b-a62c-6319-acea-162155465c14",
  "kind": "theorem",
  "lexical_name": "actualInsideStripKernel_below_beyond",
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
  "slug": "actualinsidestripkernel-below-beyond--115d8e7e63f80ff1bcf53d97",
  "source": {
    "blob": "ec26ac74c01337e6f44d3f426fb55520cf847ff2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant49f5fb1b4820b14ef629ab28ab3b122521b32f547849deb92e537b0525786ffd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:115d8e7e63f80ff1bcf53d973f8ff03870ac7d69929e5c79e8ad0956d86fe041",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant49f5fb1b4820b14ef629ab28ab3b122521b32f547849deb92e537b0525786ffd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:178fcd4b-a62c-6319-acea-162155465c14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualInsideStripKernel_below_beyond (R L : ℝ) :
    ∃ A : ℝ, R ≤ A ∧ 1 ≤ A ∧
      (actualBilateralCorrelationTransform A actualInsideStripMode).re < L := by
  obtain ⟨n, hn, hR, hA⟩ :=
    ((actualInsideStripKernel_eventually_below L).and
      ((sequence_tendsto.eventually_ge_atTop R).and
      (sequence_tendsto.eventually_ge_atTop 1))).exists
  exact ⟨actualInsideStripSequence n, hR, hA, hn⟩

/-- A uniform lower bound for all actual scales cannot hold for this prescribed strip mode. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant49f5fb1b4820b14ef629ab28ab3b122521b32f547849deb92e537b0525786ffd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant49f5fb1b4820b14ef629ab28ab3b122521b32f547849deb92e537b0525786ffd.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec26ac74c01337e6f44d3f426fb55520cf847ff2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
