# _root_.GRWTSK.Topology.GeneralTopology.OuterRegular.Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.Set.exists_isOpen_le_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05b3c2dd-745e-f2cc-a58d-38bc57e6d111",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.OuterRegular.Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.Set.exists_isOpen_le_add",
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
  "slug": "root-grwtsk-topology-generaltopology-outerregular-variantf6b354549fa13be--9decc3273e37e626372ae358",
  "source": {
    "blob": "1c1fb563dfba3d4dcf3211f8f280380297a69d53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 272,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Variant6ef5c3d7b346c1ab6b984119a955afb98ae1b6f538f5dac8b2aa3678bae9247e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9decc3273e37e626372ae358a4754de19c89463be3a638b7463d4f252e1e8251",
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

Occurrence: `result:05b3c2dd-745e-f2cc-a58d-38bc57e6d111`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.OuterRegular.Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.Set.exists_isOpen_le_add (A : Set α) (μ : Measure α) [OuterRegular μ] {ε : ℝ≥0∞}
    (hε : ε ≠ 0) : ∃ U, U ⊇ A ∧ IsOpen U ∧ μ U ≤ μ A + ε := by
  rcases eq_or_ne (μ A) ∞ with (H | H)
  · exact ⟨univ, subset_univ _, isOpen_univ, by simp only [H, _root_.top_add, le_top]⟩
  · rcases A.exists_isOpen_lt_add H hε with ⟨U, AU, U_open, hU⟩
    exact ⟨U, AU, U_open, hU.le⟩
#align set.exists_is_open_le_add Set.exists_isOpen_le_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Variant6ef5c3d7b346c1ab6b984119a955afb98ae1b6f538f5dac8b2aa3678bae9247e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Variant6ef5c3d7b346c1ab6b984119a955afb98ae1b6f538f5dac8b2aa3678bae9247e.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c1fb563dfba3d4dcf3211f8f280380297a69d53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
