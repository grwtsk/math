# toIcoMod_eventuallyEq_toIocMod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:466cfad7-b347-22d1-50db-933945db1b5e",
  "kind": "theorem",
  "lexical_name": "toIcoMod_eventuallyEq_toIocMod",
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
  "slug": "toicomod-eventuallyeq-toiocmod--ea478bc58f746f28b2a3237c",
  "source": {
    "blob": "f100dfac99db57c27650b5a343da01771e2a7417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/AddCircle/Variant41c4395b36fe09d75b53239c7b0c07ab7cb4a9c21043a9a0b4f164478f036dd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea478bc58f746f28b2a3237cc24effc3727f2131d304ee0324ef7cd161ac7e7f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddCircle/Variant41c4395b36fe09d75b53239c7b0c07ab7cb4a9c21043a9a0b4f164478f036dd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:466cfad7-b347-22d1-50db-933945db1b5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toIcoMod_eventuallyEq_toIocMod (hx : (x : 𝕜 ⧸ zmultiples p) ≠ a) :
    toIcoMod hp a =ᶠ[𝓝 x] toIocMod hp a :=
  IsOpen.mem_nhds
      (by
        rw [Ico_eq_locus_Ioc_eq_iUnion_Ioo]
        exact isOpen_iUnion fun i => isOpen_Ioo) <|
    (not_modEq_iff_toIcoMod_eq_toIocMod hp).1 <| not_modEq_iff_ne_mod_zmultiples.2 hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddCircle/Variant41c4395b36fe09d75b53239c7b0c07ab7cb4a9c21043a9a0b4f164478f036dd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddCircle/Variant41c4395b36fe09d75b53239c7b0c07ab7cb4a9c21043a9a0b4f164478f036dd9.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f100dfac99db57c27650b5a343da01771e2a7417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
