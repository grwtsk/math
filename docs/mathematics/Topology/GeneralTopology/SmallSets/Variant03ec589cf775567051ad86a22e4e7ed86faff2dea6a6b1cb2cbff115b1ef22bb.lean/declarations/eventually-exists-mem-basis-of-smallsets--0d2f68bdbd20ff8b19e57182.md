# Eventually.exists_mem_basis_of_smallSets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adcba586-681a-e8e4-abc4-ff76f9f6ff5d",
  "kind": "theorem",
  "lexical_name": "Eventually.exists_mem_basis_of_smallSets",
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
  "slug": "eventually-exists-mem-basis-of-smallsets--0d2f68bdbd20ff8b19e57182",
  "source": {
    "blob": "e09332bf9b057f4d22220f29aaca1f0ff61ca2b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d2f68bdbd20ff8b19e57182e81bb0d27ff176a9de2d101a6cff97ae6e83560e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adcba586-681a-e8e4-abc4-ff76f9f6ff5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Eventually.exists_mem_basis_of_smallSets {p : ι → Prop} {s : ι → Set α} {P : Set α → Prop}
    (h₁ : ∀ᶠ t in l.smallSets, P t) (h₂ : HasBasis l p s) : ∃ i, p i ∧ P (s i) :=
  (h₂.smallSets.eventually_iff.mp h₁).imp fun _i ⟨hpi, hi⟩ ↦ ⟨hpi, hi Subset.rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e09332bf9b057f4d22220f29aaca1f0ff61ca2b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
