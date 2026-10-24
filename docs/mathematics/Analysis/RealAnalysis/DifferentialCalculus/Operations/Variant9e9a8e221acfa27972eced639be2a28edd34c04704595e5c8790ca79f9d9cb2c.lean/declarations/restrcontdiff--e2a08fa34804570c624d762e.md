# restrContDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f06d2d57c0c2cf96e450d3108037632d038b5f1d317fdd412bc8ca663283fe82",
  "kind": "def",
  "lexical_name": "restrContDiff",
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
  "slug": "restrcontdiff--e2a08fa34804570c624d762e",
  "source": {
    "blob": "47d12df4bfb825b5388750802f58aa3a4019d8aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 903,
    "line": 895,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variant9e9a8e221acfa27972eced639be2a28edd34c04704595e5c8790ca79f9d9cb2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2a08fa34804570c624d762e62b19885ac3a213dad96d6688cbf6e1f0701afe0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variant9e9a8e221acfa27972eced639be2a28edd34c04704595e5c8790ca79f9d9cb2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f06d2d57c0c2cf96e450d3108037632d038b5f1d317fdd412bc8ca663283fe82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 895–903.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrContDiff (f : PartialHomeomorph E F) (n : WithTop ℕ∞) (hn : n ≠ ∞) :
    PartialHomeomorph E F :=
  haveI H : f.IsImage {x | ContDiffAt 𝕜 n f x ∧ ContDiffAt 𝕜 n f.symm (f x)}
      {y | ContDiffAt 𝕜 n f.symm y ∧ ContDiffAt 𝕜 n f (f.symm y)} := fun x hx ↦ by
    simp [hx, and_comm]
  H.restr <| isOpen_iff_mem_nhds.2 fun _ ⟨hxs, hxf, hxf'⟩ ↦
    inter_mem (f.open_source.mem_nhds hxs) <| (hxf.eventually hn).and <|
    f.continuousAt hxs (hxf'.eventually hn)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variant9e9a8e221acfa27972eced639be2a28edd34c04704595e5c8790ca79f9d9cb2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variant9e9a8e221acfa27972eced639be2a28edd34c04704595e5c8790ca79f9d9cb2c.lean#L895).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47d12df4bfb825b5388750802f58aa3a4019d8aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
