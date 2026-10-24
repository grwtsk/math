# nonempty_cauchyFilter_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d71fb15e-135c-1e6e-70ae-dde7f7b120f4",
  "kind": "theorem",
  "lexical_name": "nonempty_cauchyFilter_iff",
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
  "slug": "nonempty-cauchyfilter-iff--39cccd7eb330d3b0e772a6ac",
  "source": {
    "blob": "c21e3d20d856d012ba3fe008d8697ba7a98b7d73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 220,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant593d7afd57ce7907e856c6b7b91e4f2cd847f666ca2e20c9ccd3dde365f75603.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39cccd7eb330d3b0e772a6acf1ff728f57e61684c88acfda25ac3d7bec0bbc29",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Completion/Variant593d7afd57ce7907e856c6b7b91e4f2cd847f666ca2e20c9ccd3dde365f75603.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d71fb15e-135c-1e6e-70ae-dde7f7b120f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonempty_cauchyFilter_iff : Nonempty (CauchyFilter α) ↔ Nonempty α := by
  constructor <;> rintro ⟨c⟩
  · have := eq_univ_iff_forall.1 denseEmbedding_pureCauchy.toDenseInducing.closure_range c
    obtain ⟨_, ⟨_, a, _⟩⟩ := mem_closure_iff.1 this _ isOpen_univ trivial
    exact ⟨a⟩
  · exact ⟨pureCauchy c⟩
set_option linter.uppercaseLean3 false in
#align Cauchy.nonempty_Cauchy_iff CauchyFilter.nonempty_cauchyFilter_iff

section

-- porting note: I commented this
-- set_option eqn_compiler.zeta true

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Completion/Variant593d7afd57ce7907e856c6b7b91e4f2cd847f666ca2e20c9ccd3dde365f75603.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant593d7afd57ce7907e856c6b7b91e4f2cd847f666ca2e20c9ccd3dde365f75603.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c21e3d20d856d012ba3fe008d8697ba7a98b7d73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
