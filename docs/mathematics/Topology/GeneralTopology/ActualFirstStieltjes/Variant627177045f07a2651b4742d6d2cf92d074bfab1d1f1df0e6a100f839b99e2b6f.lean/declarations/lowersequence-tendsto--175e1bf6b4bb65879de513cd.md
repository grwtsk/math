# lowerSequence_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:445a7d38-52ad-5e67-ee19-4709d7e4ffaf",
  "kind": "theorem",
  "lexical_name": "lowerSequence_tendsto",
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
  "slug": "lowersequence-tendsto--175e1bf6b4bb65879de513cd",
  "source": {
    "blob": "24ce213f9bbdbda90995cf76826da03e51ac5341",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:175e1bf6b4bb65879de513cd7095027e3599e566b09db846341ea2eef672a2a2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:445a7d38-52ad-5e67-ee19-4709d7e4ffaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lowerSequence_tendsto : Tendsto lowerSequence atTop (𝓝 firstStieltjesConstant) := by
  change Tendsto (fun n : ℕ => stieltjesSequence n - logQuotient n) atTop (𝓝 firstStieltjesConstant)
  simpa only [sub_zero] using tendsto_stieltjesSequence.sub logQuotient_tendsto_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24ce213f9bbdbda90995cf76826da03e51ac5341` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
