# discreteSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a47d64fe-743d-1454-6ef2-865fa56e33ef",
  "kind": "theorem",
  "lexical_name": "discreteSupport",
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
  "slug": "discretesupport--af2f238b085a573cb0542cbd",
  "source": {
    "blob": "40c1e569c7d033760b39fbdbb8122f26790ba773",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 131,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af2f238b085a573cb0542cbd72c454bb554acf3d3bb530d9ba16de7e05475a11",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a47d64fe-743d-1454-6ef2-865fa56e33ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discreteSupport [Zero Y] [T1Space X] (D : locallyFinsuppWithin U Y) :
    DiscreteTopology D.support := by
  have : D.support = {x | D x = 0}ᶜ ∩ U := by
    ext x
    constructor
    · exact fun hx ↦ ⟨by tauto, D.supportWithinDomain hx⟩
    · intro hx
      rw [mem_inter_iff, mem_compl_iff, mem_setOf_eq] at hx
      tauto
  rw [this]
  apply discreteTopology_of_codiscreteWithin
  apply (supportDiscreteWithin_iff_locallyFiniteWithin D.supportWithinDomain).2
  exact D.supportLocallyFiniteWithinDomain

/--
If `X` is T1 and if `U` is closed, then the support of support of a function with locally finite
support within `U` is also closed.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40c1e569c7d033760b39fbdbb8122f26790ba773` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
