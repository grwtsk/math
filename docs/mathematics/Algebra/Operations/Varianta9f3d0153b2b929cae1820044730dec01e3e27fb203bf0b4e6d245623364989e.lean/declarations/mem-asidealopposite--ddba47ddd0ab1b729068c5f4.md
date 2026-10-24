# mem_asIdealOpposite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfbca086-3ab1-3bfd-84b0-36f57fe3828d",
  "kind": "lemma",
  "lexical_name": "mem_asIdealOpposite",
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
  "slug": "mem-asidealopposite--ddba47ddd0ab1b729068c5f4",
  "source": {
    "blob": "6df2815c25807fc32d429257dc5ff09446d2fa6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 362,
    "path": "GRWTSK/Algebra/Operations/Varianta9f3d0153b2b929cae1820044730dec01e3e27fb203bf0b4e6d245623364989e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddba47ddd0ab1b729068c5f47b05da4b6c628054e8f166f4c7bb84710e776b9a",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Varianta9f3d0153b2b929cae1820044730dec01e3e27fb203bf0b4e6d245623364989e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfbca086-3ab1-3bfd-84b0-36f57fe3828d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_asIdealOpposite {I : TwoSidedIdeal R} {x : Rᵐᵒᵖ} :
    x ∈ asIdealOpposite I ↔ x.unop ∈ I := by
  simpa [asIdealOpposite, asIdeal, TwoSidedIdeal.mem_iff, RingCon.op_iff] using
    ⟨I.ringCon.symm, I.ringCon.symm⟩

end Ring

section CommRing

variable {R : Type*} [CommRing R]

/--
When the ring is commutative, two-sided ideals are exactly the same as left ideals.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Varianta9f3d0153b2b929cae1820044730dec01e3e27fb203bf0b4e6d245623364989e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Varianta9f3d0153b2b929cae1820044730dec01e3e27fb203bf0b4e6d245623364989e.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6df2815c25807fc32d429257dc5ff09446d2fa6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
