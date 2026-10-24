# trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bd849b5-1823-81f1-1508-e2d8b91b3c89",
  "kind": "theorem",
  "lexical_name": "trans",
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
  "slug": "trans--4bd2cb56b2de6f2374fbd579",
  "source": {
    "blob": "1c1fb563dfba3d4dcf3211f8f280380297a69d53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 195,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Variant6ef5c3d7b346c1ab6b984119a955afb98ae1b6f538f5dac8b2aa3678bae9247e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bd2cb56b2de6f2374fbd579e1d98bdacab57979c9bea9352ebf20b97511d50c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Regular/Variant6ef5c3d7b346c1ab6b984119a955afb98ae1b6f538f5dac8b2aa3678bae9247e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bd849b5-1823-81f1-1508-e2d8b91b3c89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trans {q' : Set α → Prop} (H : InnerRegular μ p q) (H' : InnerRegular μ q q') :
    InnerRegular μ p q' := by
  intro U hU r hr
  rcases H' hU r hr with ⟨F, hFU, hqF, hF⟩; rcases H hqF _ hF with ⟨K, hKF, hpK, hrK⟩
  exact ⟨K, hKF.trans hFU, hpK, hrK⟩
#align measure_theory.measure.inner_regular.trans MeasureTheory.Measure.InnerRegular.trans

end InnerRegular

variable {α β : Type*} [MeasurableSpace α] [TopologicalSpace α] {μ : Measure α}

/-- A measure `μ` is outer regular if `μ(A) = inf {μ(U) | A ⊆ U open}` for a measurable set `A`.

This definition implies the same equality for any (not necessarily measurable) set, see
`Set.measure_eq_iInf_isOpen`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Variant6ef5c3d7b346c1ab6b984119a955afb98ae1b6f538f5dac8b2aa3678bae9247e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Variant6ef5c3d7b346c1ab6b984119a955afb98ae1b6f538f5dac8b2aa3678bae9247e.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c1fb563dfba3d4dcf3211f8f280380297a69d53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
