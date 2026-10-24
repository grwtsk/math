# _root_.GRWTSK.Analysis.MeasureTheory.Kernel.Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.ProbabilityTheory.IsSFiniteKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:810ba2197776605e4420278fef03f6951fe5f6f1db5958c0db88b927aef31e7c",
  "kind": "class",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.Kernel.Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.ProbabilityTheory.IsSFiniteKernel",
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
  "slug": "root-grwtsk-analysis-measuretheory-kernel-variant986a83a089e8c754bd0d44f--3146089b40094bf666ece3e5",
  "source": {
    "blob": "91859d6ea7ece5e5fe80aea4c5812ee27bc32f11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 305,
    "path": "GRWTSK/Analysis/MeasureTheory/Defs/Variant5577569e035c1e80233d513bc8b81a11c79bab180135691e54eb71061a679b06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3146089b40094bf666ece3e56c9285e95155b6a35b2864bebba241bac3a72a2a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Defs/Variant5577569e035c1e80233d513bc8b81a11c79bab180135691e54eb71061a679b06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:810ba2197776605e4420278fef03f6951fe5f6f1db5958c0db88b927aef31e7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class _root_.GRWTSK.Analysis.MeasureTheory.Kernel.Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.ProbabilityTheory.IsSFiniteKernel (κ : Kernel α β) : Prop where
  tsum_finite : ∃ κs : ℕ → Kernel α β, (∀ n, IsFiniteKernel (κs n)) ∧ κ = Kernel.sum κs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Defs/Variant5577569e035c1e80233d513bc8b81a11c79bab180135691e54eb71061a679b06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Defs/Variant5577569e035c1e80233d513bc8b81a11c79bab180135691e54eb71061a679b06.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91859d6ea7ece5e5fe80aea4c5812ee27bc32f11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
