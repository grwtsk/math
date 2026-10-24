# ContentRegular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1af58e6dd3a5a90e2ace855557ae97bd175b4ee4f742b331014ee6e6553beae1",
  "kind": "def",
  "lexical_name": "ContentRegular",
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
  "slug": "contentregular--8ba8c89a996274971df5e66e",
  "source": {
    "blob": "d541fbc6900566162eae4801fceb6aea2c874a8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 414,
    "path": "GRWTSK/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ba8c89a996274971df5e66e4027fe4b31b3a47761913ec2db7e8007e97d9fe2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1af58e6dd3a5a90e2ace855557ae97bd175b4ee4f742b331014ee6e6553beae1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContentRegular :=
  ∀ ⦃K : TopologicalSpace.Compacts G⦄,
    μ K = ⨅ (K' : TopologicalSpace.Compacts G) (_ : (K : Set G) ⊆ interior (K' : Set G)), μ K'
#align measure_theory.content.content_regular MeasureTheory.Content.ContentRegular

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d541fbc6900566162eae4801fceb6aea2c874a8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
