# polarBilin_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f599d71e-a844-b39f-4801-487193002efe",
  "kind": "theorem",
  "lexical_name": "polarBilin_pi",
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
  "slug": "polarbilin-pi--2e19c3a4a3b05bfd1b089ed7",
  "source": {
    "blob": "079ab8787526947723b72f417daf569188f7b77c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 356,
    "path": "GRWTSK/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e19c3a4a3b05bfd1b089ed729b9cdca6a025874db83228616c856df7f9a2050",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f599d71e-a844-b39f-4801-487193002efe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem polarBilin_pi (Q : ∀ i, QuadraticMap R (Mᵢ i) P) :
    (pi Q).polarBilin = ∑ i, (Q i).polarBilin.compl₁₂ (.proj i) (.proj i) :=
  LinearMap.ext₂ fun x y => (polar_pi _ _ _).trans <| by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `079ab8787526947723b72f417daf569188f7b77c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
