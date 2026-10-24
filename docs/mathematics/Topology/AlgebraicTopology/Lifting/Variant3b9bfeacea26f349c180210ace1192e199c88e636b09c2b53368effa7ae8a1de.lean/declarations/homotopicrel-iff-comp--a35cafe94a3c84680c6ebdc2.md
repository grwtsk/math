# homotopicRel_iff_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5da81744-6d48-daf3-c2de-442ec68e2fbd",
  "kind": "theorem",
  "lexical_name": "homotopicRel_iff_comp",
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
  "slug": "homotopicrel-iff-comp--a35cafe94a3c84680c6ebdc2",
  "source": {
    "blob": "2fad44e72ce62dfc5ab7ea4fc07a469842e5b8fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 375,
    "path": "GRWTSK/Topology/AlgebraicTopology/Lifting/Variant3b9bfeacea26f349c180210ace1192e199c88e636b09c2b53368effa7ae8a1de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a35cafe94a3c84680c6ebdc2342597291315791463b1acd1b3fce97f2dd8da82",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Lifting/Variant3b9bfeacea26f349c180210ace1192e199c88e636b09c2b53368effa7ae8a1de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5da81744-6d48-daf3-c2de-442ec68e2fbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homotopicRel_iff_comp [PreconnectedSpace A] {f₀ f₁ : C(A, E)} {S : Set A}
    (he : ∃ a ∈ S, f₀ a = f₁ a) : f₀.HomotopicRel f₁ S ↔
      (ContinuousMap.comp ⟨p, cov.continuous⟩ f₀).HomotopicRel (.comp ⟨p, cov.continuous⟩ f₁) S :=
  ⟨fun ⟨F⟩ ↦ ⟨F.compContinuousMap _⟩, fun ⟨F⟩ ↦ ⟨cov.liftHomotopyRel F he rfl rfl⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Lifting/Variant3b9bfeacea26f349c180210ace1192e199c88e636b09c2b53368effa7ae8a1de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Lifting/Variant3b9bfeacea26f349c180210ace1192e199c88e636b09c2b53368effa7ae8a1de.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fad44e72ce62dfc5ab7ea4fc07a469842e5b8fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
