# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ec997eef5960ff6f59c02996da23ebba1c2f482cb1085534cdf3305c37fbc99",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c9bb8eccad8859c36c5b4d07",
  "source": {
    "blob": "491d79d4147fabd531a347865cbef39eee96e9cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 249,
    "path": "GRWTSK/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9bb8eccad8859c36c5b4d07864b4095bf8eeb92c3658584574eccffdb91a2f8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ec997eef5960ff6f59c02996da23ebba1c2f482cb1085534cdf3305c37fbc99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (x : X) : HSpace (Path x x) where
  hmul := ⟨fun ρ => ρ.1.trans ρ.2, continuous_trans⟩
  e := refl x
  hmul_e_e := refl_trans_refl
  eHmul :=
    { toHomotopy :=
        ⟨⟨fun p : I × Path x x ↦ delayReflLeft p.1 p.2, continuous_delayReflLeft⟩,
          delayReflLeft_zero, delayReflLeft_one⟩
      prop' := by rintro t _ rfl; exact refl_trans_refl.symm }
  hmulE :=
    { toHomotopy :=
        ⟨⟨fun p : I × Path x x ↦ delayReflRight p.1 p.2, continuous_delayReflRight⟩,
          delayReflRight_zero, delayReflRight_one⟩
      prop' := by rintro t _ rfl; exact refl_trans_refl.symm }

end Path
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `491d79d4147fabd531a347865cbef39eee96e9cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
